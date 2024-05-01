# modules/internet_gateway/main.tf

resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id
}

