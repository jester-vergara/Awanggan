import ipaddress
import json
import os

# Parameters
accounts = {
    "Shared": "11.0.0.0/8"
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
    return list(network.subnets(new_prefix=int(division.split('/')[1])))[:count]

# Generate VPCs and Subnets
vpcs = []
subnets = []

for account, base_cidr in accounts.items():
    region_count = len(regions) * len(vpc_naming_conventions)
    vpc_cidrs = generate_cidr(base_cidr, cidr_division["vpc"], region_count)
    cidr_index = 0

    for region_code in regions.keys():
        for vpc_label in vpc_naming_conventions:
            vpc_name = f"{region_code}_{vpc_label.lower()}"
            vpcs.append({
                "name": vpc_name,
                "account": account,
                "region": region_code,
                "cidr": str(vpc_cidrs[cidr_index]),
                "tags": {"Name": vpc_name}
            })

            subnet_cidrs = generate_cidr(vpc_cidrs[cidr_index], cidr_division["subnet"], 30)
            for ecosystem_name in ecosystem_naming_values:
                subnet_name = f"{vpc_name}_{ecosystem_name.lower()}"
                subnets.append({
                    "name": subnet_name,
                    "cidr": str(subnet_cidrs.pop(0)),
                    "vpc": vpc_name,
                    "region": region_code,
                    "tags": {"Name": subnet_name}
                })
            cidr_index += 1

# Generate Terraform Locals
def generate_locals(vpcs, subnets):
    locals_content = 'locals {\n'
    locals_content += '  vpcs = {\n'
    for vpc in vpcs:
        locals_content += f'    "{vpc["name"]}" = {{\n'
        locals_content += f'      region = "{vpc["region"]}"\n'
        locals_content += f'      cidr   = "{vpc["cidr"]}"\n'
        locals_content += f'      tags   = {json.dumps(vpc["tags"])}\n'
        locals_content += f'    }}\n'
    locals_content += '  }\n\n'

    locals_content += '  subnets = {\n'
    for subnet in subnets:
        locals_content += f'    "{subnet["name"]}" = {{\n'
        locals_content += f'      cidr   = "{subnet["cidr"]}"\n'
        locals_content += f'      vpc    = "{subnet["vpc"]}"\n'
        locals_content += f'      region = "{subnet["region"]}"\n'
        locals_content += f'      tags   = {json.dumps(subnet["tags"])}\n'
        locals_content += f'    }}\n'
    locals_content += '  }\n'
    locals_content += '}'
    return locals_content

# Generate Terraform Variables
def generate_variables(vpcs, subnets):
    variables_content = ""
    for vpc in vpcs:
        variables_content += f'variable "create_vpc_{vpc["name"]}" {{\n'
        variables_content += '  type    = bool\n'
        variables_content += '  default = false\n'
        variables_content += '}\n\n'

    for subnet in subnets:
        variables_content += f'variable "create_subnet_{subnet["name"]}" {{\n'
        variables_content += '  type    = bool\n'
        variables_content += '  default = false\n'
        variables_content += '}\n\n'
    return variables_content

# Generate Shared TFVars
def generate_tfvars(vpcs, subnets):
    tfvars_content = ""
    for vpc in vpcs:
        tfvars_content += f'create_vpc_{vpc["name"]} = false\n'
    for subnet in subnets:
        tfvars_content += f'create_subnet_{subnet["name"]} = false\n'
    return tfvars_content

# Write Outputs
os.makedirs("output", exist_ok=True)

with open("output/locals.tf", "w") as f:
    f.write(generate_locals(vpcs, subnets))

with open("output/variables.tf", "w") as f:
    f.write(generate_variables(vpcs, subnets))

with open("output/shared.tfvars", "w") as f:
    f.write(generate_tfvars(vpcs, subnets))

print("Generated: locals.tf, variables.tf, shared.tfvars in 'output' folder")