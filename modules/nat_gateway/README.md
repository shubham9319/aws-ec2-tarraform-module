# NAT Gateway Module

## Description:
This module provisions a NAT Gateway on AWS within a specified public subnet and associates it with an Elastic IP (EIP).

### Module Structure:

  - `main.tf:` Defines the AWS Elastic IP and NAT Gateway resources and associates the EIP with the NAT Gateway.
  - `variables.tf:` Declares input variables for customization.
  - `output.tf:` Exports the NAT Gateway ID as an output.

### Usage:
To use this module, include it in your Terraform configuration with the desired input variables.

    module "nat_gateway" {
      source    = "./modules/nat_gateway"
      subnet_id = "subnet-12345678" // Replace with your public subnet ID
    }

### Input Variables:

- `subnet_id:` (Type: string) ID of the public subnet where the NAT Gateway should be deployed.

### Outputs:

  - `nat_gateway_id:` ID of the provisioned NAT Gateway.

## Note:
Ensure that appropriate permissions are set for the AWS credentials used with Terraform to provision NAT Gateways.
