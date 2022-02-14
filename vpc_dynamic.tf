// vpc for dynamic blocks

# resource "aws_vpc" "main" {
#   cidr_block       = "192.16.0.0/16"
#   instance_tenancy = "default"
#   tags = {
#     Name = "vpc-dyn"
#   }
# }


# // subnet for dynamic

# resource "aws_subnet" "sub_dyn" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "192.16.1.0/24"
#   tags = {
#     Name = "my-sub-dyn-01"
#   }
# }