# modules/route_tables/variables.tf

variable "vpc_id" {
  description = "ID of the VPC"
}

variable "public_subnet_id" {
  description = "ID of the public subnet"
}

variable "private_subnet_id" {
  description = "ID of the private subnet"
}

variable "internet_gateway_id" {
  description = "ID of the internet gateway"
}

variable "nat_gateway_id" {
  description = "ID of the NAT Gateway"
}
