# main.tf

# Configure provider
provider "aws" {
  region = "ap-south-1"
}

# Include VPC module
module "vpc" {
  source                    = "./modules/vpc"
  vpc_cidr_block            = "10.0.0.0/16"
  public_subnet_cidr_block  = "10.0.1.0/24"
  private_subnet_cidr_block = "10.0.2.0/24"
  availability_zone         = "your-chosen-availability-zone"
}

# Include NAT Gateway module
module "nat_gateway" {
  source    = "./modules/nat_gateway"
  subnet_id = module.vpc.public_subnet_id
}

# Include Internet Gateway module
module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

# Include Route Tables module
module "route_tables" {
  source              = "./modules/route_tables"
  vpc_id              = module.vpc.vpc_id
  public_subnet_id    = module.vpc.public_subnet_id
  private_subnet_id   = module.vpc.private_subnet_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
  nat_gateway_id      = module.nat_gateway.nat_gateway_id
}

# Include Security Group module
module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

# Include EC2 Instance module
module "ec2_instance" {
  source            = "./modules/ec2_instance"
  subnet_id         = module.vpc.private_subnet_id
  security_group_id = module.security_group.security_group_id
  ami               = "your-ami-id"
  instance_type     = "t2.micro" # Example instance type, modify as needed
}

