# Security Group Module

## Description:
This module creates a security group on AWS within a specified Virtual Private Cloud (VPC) with customizable inbound rules.

### Module Structure:

  - `main.tf:` Defines the AWS security group with egress and ingress rules.
  - `variables.tf:` Declares input variables for customization.
  - `output.tf:` Exports the security group ID as an output.

### Usage:
To use this module, include it in your Terraform configuration with the required input variables.

    module "security_group" {
      source  = "./modules/security_group"
      vpc_id  = "vpc-12345678" // Replace with your VPC ID
    }

### Input Variables:

- `vpc_id:` (Type: string) ID of the VPC where the security group should be created.

### Outputs:

- `security_group_id:` ID of the provisioned security group.

## Note:
Ensure that appropriate permissions are set for the AWS credentials used with Terraform to provision security groups.
