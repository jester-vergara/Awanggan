import pandas as pd
import os
import ipaddress

# Parameters
accounts = {
    "Prod": "15.0.0.0/8",
    "Dev": "13.0.0.0/8",
    "QA": "14.0.0.0/8",
    "Sandbox": "12.0.0.0/8",
    "Shared": "11.0.0.0/8",
    "Logging": "10.0.0.0/8"
}

regions = {
    "us-east-1": "N. Virginia",
    "us-west-2": "Oregon",
    "eu-west-1": "Ireland",
    "ap-south-1": "Mumbai",
    "ap-southeast-1": "Singapore",
    "ap-northeast-1": "Tokyo",
    "eu-central-1": "Frankfurt",
    "ap-southeast-2": "Sydney",
    "sa-east-1": "São Paulo",
    "af-south-1": "Cape Town",
    "me-central-1": "UAE",
    "ap-southeast-3": "Jakarta",
    "eu-west-3": "Paris",
    "eu-north-1": "Stockholm"
}

vpc_naming_conventions = ["ALPHA", "BETA", "GAMMA", "DELTA", "EPSILON"]
ecosystem_naming_values = [
    "Primus",
    "Secundus",
    "Tertius",
    "Quartus",
    "Quintus",
    "Sextus",
    "Septimus",
    "Octavus"
]

vpcs_per_region = 5
subnets_per_vpc = 15
ecosystem_count = 8
subnets_per_ecosystem = 15

cidr_division = {
    "vpc": "/15",
    "subnet": "/22"
}

# Define output file path
output_file_path = "./docs/ip_cidr_inventory.xlsx"

# Ensure the directory exists
os.makedirs(os.path.dirname(output_file_path), exist_ok=True)

# Generate VPC allocation
def generate_vpc_allocation(account_name, base_cidr):
    vpc_data = []
    base_network = ipaddress.IPv4Network(base_cidr)
    vpc_cidrs = list(base_network.subnets(new_prefix=15))  # Subdivide /8 into /15
    
    for region_index, (region_code, region_name) in enumerate(regions.items()):
        for vpc_index, vpc_label in enumerate(vpc_naming_conventions):
            if region_index * len(vpc_naming_conventions) + vpc_index >= len(vpc_cidrs):
                break  # Stop if we run out of /15 blocks
            vpc_cidr = vpc_cidrs[region_index * len(vpc_naming_conventions) + vpc_index]
            vpc_name = f"{account_name.upper()}-VPC-{region_code.upper()}-{vpc_label}"
            vpc_data.append({
                "Region Code": region_code,
                "Region Name": region_name,
                "VPC Name": vpc_name,
                "CIDR Block": str(vpc_cidr)
            })
    return pd.DataFrame(vpc_data)

# Generate Subnet allocation
def generate_subnet_allocation(vpc_allocation_df):
    subnet_data = []
    for _, vpc in vpc_allocation_df.iterrows():
        vpc_cidr = ipaddress.IPv4Network(vpc["CIDR Block"])
        subnet_cidrs = list(vpc_cidr.subnets(new_prefix=22))  # Subdivide /15 into /22
        
        for ecosystem_index, ecosystem_name in enumerate(ecosystem_naming_values[:ecosystem_count]):
            for subnet_index in range(subnets_per_ecosystem):
                az = f"AZ{(subnet_index % 3) + 1}"  # Cycle through AZ1, AZ2, AZ3
                subnet_type = ["APP-PRIVATE", "APP-PUBLIC", "RDS-PRIVATE", "EKS-PRIVATE", "EKS-PUBLIC"][(subnet_index // 3) % 5]
                subnet_cidr = subnet_cidrs[ecosystem_index * subnets_per_ecosystem + subnet_index]
                subnet_name = f"{vpc['VPC Name']}-{subnet_type}-SUBNET-{az}-{ecosystem_name.upper()}"
                subnet_data.append({
                    "VPC Name": vpc["VPC Name"],
                    "Subnet Name": subnet_name,
                    "AZ": az,
                    "Ecosystem": ecosystem_name,
                    "Subnet Type": subnet_type,
                    "CIDR Block": str(subnet_cidr)
                })
    return pd.DataFrame(subnet_data)

# Main script execution
with pd.ExcelWriter(output_file_path, engine="openpyxl") as writer:
    # First Tab: Account Allocation
    pd.DataFrame(accounts.items(), columns=["Account", "CIDR Block"]).to_excel(writer, sheet_name="Accounts", index=False)

    # Second Tab: Regions
    pd.DataFrame(regions.items(), columns=["Region Code", "Region Name"]).to_excel(writer, sheet_name="Regions", index=False)

    # Generate and save tabs for each account
    for account, base_cidr in accounts.items():
        vpc_df = generate_vpc_allocation(account, base_cidr)
        vpc_df.to_excel(writer, sheet_name=f"{account} VPCs", index=False)

        subnet_df = generate_subnet_allocation(vpc_df)
        subnet_df.to_excel(writer, sheet_name=f"{account} Subnets", index=False)

print(f"Excel file successfully generated at {output_file_path}!")
