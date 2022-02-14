// vpc conditions

# resource "aws_vpc" "vpc_dev" {
#   cidr_block       = "10.0.0.0/16" // you can pass variables
#   instance_tenancy = "default"
#   count            = local.ws == "default" ? 1 : 0

#   tags = {
#     Name        = "terraform-vpc-demo-${local.ws}"
#     Location    = "Bangalore"
#     Environment = "dev"
#   }
# }

# resource "aws_vpc" "vpc_stage" {
#   cidr_block       = "192.168.0.0/16"
#   instance_tenancy = "default"
#   count            = local.ws == "stage" ? 1 : 0 // you can pass variables

#   tags = {
#     Name        = "terraform-vpc-demo-${local.ws}"
#     Location    = "Bangalore"
#     Environment = "dev"
#   }
# }