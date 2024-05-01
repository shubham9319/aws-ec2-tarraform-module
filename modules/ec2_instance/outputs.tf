# modules/ec2_instance/outputs.tf

output "ec2_instance_id" {
  value = aws_instance.ec2.id
}

