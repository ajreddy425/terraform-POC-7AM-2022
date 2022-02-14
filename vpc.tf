// craete vpc
// resource resorce_type logical name, logical name can be anything
// FAQ
// phone number of VPC(or any AWS resource a) is resource_type.logical_name.id
# resource "aws_vpc" "main1" {
#   cidr_block       = var.vpc_cidr // var.variable_logical_name
#   instance_tenancy = "default"

#   tags = {
#     Name        = "terraform-var-demo-${local.ws}"
#     Location    = "Bangalore"
#     Environment = "dev"
#   }
# }



// we need to specify the resource block for that resource

# resource "aws_vpc" "import_vpc"{
#   //////
# }

// for_each VPC 

# resource "aws_vpc" "main" {
#   for_each   = var.vpc_cidrs
#   cidr_block = each.value

#   tags = {
#     Name = each.key
#   }
# }




// variable for for_each
// for_each takes two arguments each.key and each.value

# variable "vpc_cidrs" {
#   default = {
#     app-one = "172.16.0.0/16"
#     app-two = "192.168.0.0/16" // map of strings || key = value
#   }
# }