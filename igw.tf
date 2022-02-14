// create igw

# resource "aws_internet_gateway" "gw" {
#   vpc_id = aws_vpc.main1.id // phone number of VPC

#   tags = {
#     Name = "iGW-terraform"
#   }
# }