resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "subnet" {

    for_each = var.subnets
      vpc_id            = aws_vpc.main.id
      availability_zone = each.value.name
      cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, each.value.number)
       tags= {
    name = each.value.type
  }
}
