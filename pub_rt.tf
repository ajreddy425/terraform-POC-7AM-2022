// creation of  public route table

# resource "aws_route_table" "pub_rt" {
#   vpc_id = aws_vpc.main1.id // phone number of VPC

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.gw.id // phone number of iGW
#   }

#   tags = {
#     Name = "pub-rt-terraform"
#   }
# }