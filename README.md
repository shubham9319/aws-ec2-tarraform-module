# Infrastructure Deployment Process Documentation

## Objective: The objective of this document is to outline the process of deploying AWS infrastructure using Terraform modules.

### Prerequisites:

- AWS account with appropriate permissions to create resources.
- Terraform installed on the local machine.

### Steps:

#### 1. Configure Provider:

- In the main.tf file, configure the AWS provider with the desired region (ap-south-1 in this case).

#### 2. Include VPC Module:

- Utilize the VPC module to create a Virtual Private Cloud (VPC) with specified CIDR blocks for VPC, public subnet, and private subnet.
- Inputs:
  - `vpc_cidr_block:` The CIDR block for the VPC.
  - `public_subnet_cidr_block:` CIDR block for the public subnet.
  - `private_subnet_cidr_block:` CIDR block for the private subnet.
  - `availability_zone:` Chosen availability zone for the resources.

#### 3. Include NAT Gateway Module:

- Incorporate the NAT Gateway module to provision a NAT gateway within the previously created public subnet.
- Inputs:
  - `subnet_id:` ID of the public subnet created by the VPC module.

#### 4. Include Internet Gateway Module:

- Integrate the Internet Gateway module to establish an internet gateway within the VPC.
- Inputs:
  - `vpc_id:` ID of the VPC created by the VPC module.
  
#### 5. Include Route Tables Module:

- Use the Route Tables module to create public and private route tables and associate them with respective subnets.
- Inputs:
  - `vpc_id:` ID of the VPC created by the VPC module.
  - `public_subnet_id:` ID of the public subnet created by the VPC module.
  - `private_subnet_id:` ID of the private subnet created by the VPC module.
  - `internet_gateway_id:` ID of the internet gateway created by the Internet Gateway module.
  - `nat_gateway_id:` ID of the NAT gateway created by the NAT Gateway module.
  
#### 6. Include Security Group Module:

- Incorporate the Security Group module to define and configure security groups within the VPC.
- Inputs:
  - `vpc_id:` ID of the VPC created by the VPC module.
  
#### 7. Include EC2 Instance Module:

- Utilize the EC2 Instance module to launch an EC2 instance within the private subnet with specified configurations.
- Inputs:
  - `subnet_id:` ID of the private subnet created by the VPC module.
  - `security_group_id:` ID of the security group created by the Security Group module.
  - `ami:` ID of the Amazon Machine Image (AMI) for the EC2 instance.
  - `instance_type:` Type of EC2 instance to be launched.

## Conclusion:
By following the outlined steps and configurations in the main.tf file, the desired AWS infrastructure will be provisioned using Terraform modules.
