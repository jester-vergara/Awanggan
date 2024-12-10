import ipaddress
import json
import os

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

cidr_division = {
    "vpc": "/15",
    "subnet": "/22"
}

# Helper Functions
def generate_cidr(base_cidr, division, count):
    """Generate CIDRs by dividing the base CIDR."""
    network = ipaddress.ip_network(base_cidr)
    generated_cidrs = list(network.subnets(new_prefix=int(division.split('/')[1])))
    if len(generated_cidrs) < count:
        raise ValueError(
            f"Insufficient CIDRs: Requested {count}, but only {len(generated_cidrs)} available from {base_cidr}"
        )
    return generated_cidrs[:count]

def format_terraform_variable(variable_name, data):
    """Format data into Terraform variable style."""
    formatted_data = f'variable "{variable_name}" {{\n  default = ' + json.dumps(data, indent=2) + "\n}"
    return formatted_data

# Generate VPC CIDRs with reserved blocks
vpc_cidr_mapping = {}
for account, base_cidr in accounts.items():
    vpc_cidr_mapping[account] = {}
    try:
        region_cidrs = generate_cidr(base_cidr, cidr_division["vpc"], len(regions) * len(vpc_naming_conventions))
        for region_index, (region_code, region_name) in enumerate(regions.items()):
            vpc_cidr_mapping[account][region_code] = {}
            # Assign CIDRs for active VPCs
            for vpc_index, vpc_label in enumerate(vpc_naming_conventions):
                cidr_index = region_index * len(vpc_naming_conventions) + vpc_index
                vpc_cidr_mapping[account][region_code][vpc_label.lower()] = str(region_cidrs[cidr_index])
            
            # Assign reserved CIDRs
            reserved_start_index = region_index * len(vpc_naming_conventions) + len(vpc_naming_conventions)
            reserved_blocks = region_cidrs[reserved_start_index:reserved_start_index + 5]
            for i, reserved_cidr in enumerate(reserved_blocks, start=1):
                vpc_cidr_mapping[account][region_code][f"reserved-{i:02}"] = str(reserved_cidr)
    except ValueError as e:
        print(f"Error generating VPC CIDRs for account {account}: {e}")

# Generate Subnet CIDRs with reservus subnets
subnet_cidr_mapping = {}
for account, regions_data in vpc_cidr_mapping.items():
    subnet_cidr_mapping[account] = {}
    for region_code, vpcs in regions_data.items():
        subnet_cidr_mapping[account][region_code] = {}
        for vpc_label, vpc_cidr in vpcs.items():
            vpc_network = ipaddress.IPv4Network(vpc_cidr)
            subnet_cidrs = list(vpc_network.subnets(new_prefix=22))
            subnet_cidr_mapping[account][region_code][vpc_label] = {}
            
            # Assign active ecosystem subnets
            for ecosystem_index, ecosystem_name in enumerate(ecosystem_naming_values):
                subnet_cidr_mapping[account][region_code][vpc_label][ecosystem_name.lower()] = [
                    {
                        "cidr_block": str(subnet_cidrs[i]),
                        "az": f"AZ{i % 3 + 1}",
                        "name": f"APP-{['PRIVATE', 'PUBLIC', 'RDS', 'EKS'][i % 4]}"
                    }
                    for i in range(ecosystem_index * 15, (ecosystem_index + 1) * 15)
                ]

            # Assign reservus subnets
            reservus_start_index = len(ecosystem_naming_values) * 15
            subnet_cidr_mapping[account][region_code][vpc_label]["reservus"] = [
                {
                    "cidr_block": str(subnet_cidrs[i]),
                    "az": f"AZ{i % 3 + 1}",
                    "name": f"RESERVUS-{i - reservus_start_index + 1:02}"
                }
                for i in range(reservus_start_index, len(subnet_cidrs))
            ]

# Output Terraform Variables
vpc_variable = format_terraform_variable("vpc_cidr", vpc_cidr_mapping)
subnet_variable = format_terraform_variable("subnet_cidr", subnet_cidr_mapping)

# Save to Files
os.makedirs("output", exist_ok=True)
with open("output/vpc_cidr.tf", "w") as vpc_file:
    vpc_file.write(vpc_variable)

with open("output/subnet_cidr.tf", "w") as subnet_file:
    subnet_file.write(subnet_variable)

print("Terraform variable files generated successfully in the 'output' folder.")
