// taint command demo for vpc

# resource "aws_vpc" "vpc_taint" {
#   instance_tenancy = "default"
#   cidr_block       = "192.168.0.0/24"
#   tags = {
#     Name = "terraform-vpc-taint"
#   }
# }