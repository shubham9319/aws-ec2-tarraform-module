# modules/internet_gateway/outputs.tf

output "internet_gateway_id" {
  value = aws_internet_gateway.gw.id
}

