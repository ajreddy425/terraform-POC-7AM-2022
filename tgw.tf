// crate a transit gateway
resource "aws_ec2_transit_gateway" "my_tgw" {
  description = "my_tgw_demo"
}

// VPC attachment to tgw

resource "aws_ec2_transit_gateway_vpc_attachment" "example" {
  subnet_ids         = [aws_subnet.tgw_subnet.id]
  transit_gateway_id = aws_ec2_transit_gateway.my_tgw.id
  vpc_id             = aws_vpc.tgw.id
}

// vpc 
resource "aws_vpc" "tgw" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "tgw-vpc"
  }

}

// subnets for tgw

resource "aws_subnet" "tgw_subnet" {
  cidr_block = "10.0.0.0/24"
  vpc_id     = aws_vpc.tgw.id
  tags = {
    Name = "tgw-subnet"
  }
}