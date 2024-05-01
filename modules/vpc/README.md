# VPC Module

## Description:
This module provisions a Virtual Private Cloud (VPC) on AWS along with public and private subnets within the VPC.

### Module Structure:

  - `main.tf:` Defines the AWS VPC resource and creates public and private subnets within the VPC.
  - `variables.tf:` Declares input variables for customization.
  - `output.tf:` Exports the IDs of the VPC, public subnet, and private subnet as outputs.

### Usage:
To use this module, include it in your Terraform configuration with the required input variables.

    module "vpc" {
      source                    = "./modules/vpc"
      vpc_cidr_block            = "10.0.0.0/16"
      public_subnet_cidr_block  = "10.0.1.0/24"
      private_subnet_cidr_block = "10.0.2.0/24"
      availability_zone         = "your-chosen-availability-zone"
    }

### Input Variables:

  - `vpc_cidr_block:` (Type: string) CIDR block for the VPC.
  - `public_subnet_cidr_block:` (Type: string) CIDR block for the public subnet.
  - `private_subnet_cidr_block:` (Type: string) CIDR block for the private subnet.
  - `availability_zone:` (Type: string) Availability zone for the subnets.

### Outputs:

  - `vpc_id:` ID of the provisioned VPC.
  - `public_subnet_id:` ID of the provisioned public subnet.
  - `private_subnet_id:` ID of the provisioned private subnet.

## Note:
Ensure that appropriate permissions are set for the AWS credentials used with Terraform to provision VPCs and subnets.
