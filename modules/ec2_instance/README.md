# EC2 Instance Module

### Description:
This module provisions an EC2 instance on AWS with customizable configurations.

### Module Structure:

- `main.tf:` Defines the AWS EC2 instance resource.
- `variables.tf:` Declares input variables for customization.
- `output.tf:` Exports the EC2 instance ID as an output.

### Usage: To use this module, include it in your Terraform configuration with the desired input variables.

    module "ec2_instance" {
      source            = "./modules/ec2_instance"
      subnet_id         = "subnet-12345678" // Replace with your subnet ID
      security_group_id = "sg-12345678"     // Replace with your security group ID
      ami               = "ami-12345678"    // Replace with your AMI ID
      instance_type     = "t2.micro"        // Replace with your desired instance type
    }

### Input Variables:

  - `subnet_id:` (Type: string) ID of the subnet where the EC2 instance should be deployed.
  - `security_group_id:` (Type: string) ID of the security group attached to the EC2 instance.
  - `ami:` (Type: string) ID of the AMI for the EC2 instance.
  - `instance_type:` (Type: string) Type of EC2 instance.

### Outputs:

  - `ec2_instance_id:` ID of the provisioned EC2 instance.

## Note:
Ensure that appropriate permissions are set for the AWS credentials used with Terraform to provision EC2 instances.
