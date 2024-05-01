# Route Tables Module

## Description:
This module creates route tables on AWS and associates them with specified subnets, enabling routing within the Virtual Private Cloud (VPC).

### Module Structure:

  - `main.tf:` Defines AWS route tables for public and private subnets and associates them with respective subnets.
  - `variables.tf:` Declares input variables for customization.

### Usage:
To use this module, include it in your Terraform configuration with the required input variables.

    module "route_tables" {
      source               = "./modules/route_tables"
      vpc_id               = "vpc-12345678"          // Replace with your VPC ID
      public_subnet_id     = "subnet-12345678"       // Replace with your public subnet ID
      private_subnet_id    = "subnet-12345678"       // Replace with your private subnet ID
      internet_gateway_id  = "igw-1234567890abcdef0" // Replace with your internet gateway ID
      nat_gateway_id       = "nat-1234567890abcdef0" // Replace with your NAT Gateway ID
    }

### Input Variables:

  - `vpc_id:` (Type: string) ID of the VPC.
  - `public_subnet_id:` (Type: string) ID of the public subnet.
  - `private_subnet_id:` (Type: string) ID of the private subnet.
  - `internet_gateway_id:` (Type: string) ID of the internet gateway.
  - `nat_gateway_id:` (Type: string) ID of the NAT Gateway.

## Note:
Ensure that appropriate permissions are set for the AWS credentials used with Terraform to provision route tables and associate them with subnets.
