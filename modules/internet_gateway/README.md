# Internet Gateway Module

## Description:
This module provisions an Internet Gateway on AWS and attaches it to the specified Virtual Private Cloud (VPC).

### Module Structure:

- `main.tf:` Defines the AWS Internet Gateway resource and attaches it to the specified VPC.
- `variables.tf:` Declares input variables for customization.
- `output.tf:` Exports the Internet Gateway ID as an output.

### Usage:
To use this module, include it in your Terraform configuration with the desired input variables.

      module "internet_gateway" {
        source  = "./modules/internet_gateway"
        vpc_id  = "vpc-12345678" // Replace with your VPC ID
      }

### Input Variables:

  - `vpc_id:` (Type: string) ID of the VPC to which the Internet Gateway should be attached.

### Outputs:

- `internet_gateway_id:` ID of the provisioned Internet Gateway.

## Note:
Ensure that appropriate permissions are set for the AWS credentials used with Terraform to provision Internet Gateways.
