# modules/ec2_instance/variables.tf

variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance should be deployed"
}

variable "security_group_id" {
  description = "ID of the security group attached to the EC2 instance"
}

variable "ami" {
  description = "ID of the AMI for the EC2 instance"
}

variable "instance_type" {
  description = "Type of EC2 instance"
}

