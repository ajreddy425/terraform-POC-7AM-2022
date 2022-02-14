// create subnet 1
# resource "aws_subnet" "subnet1" {
#   vpc_id            = aws_vpc.main1.id // resource_type.logical_name.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
#   count             = local.l
#   availability_zone = data.aws_availability_zones.available.names[count.index]
#   tags = {
#     Name = "Public_subnet_-${local.ws}-${count.index + 1}"
#   }
# }


// crate subnet 2

# resource "aws_subnet" "subnet2" {
#   vpc_id            = aws_vpc.main1.id // resource_type.logical_name.id
#   cidr_block        = "172.16.1.0/24"
#   availability_zone = "us-east-1b"

#   tags = {
#     Name = "Priavate-subnet-01"
#   }
# }

// ater writing code save it or put auto save in VS code ( File--> Auto save)

// cidr subnet demo for priavte subnets
# resource "aws_subnet" "private_subnet" {
#   vpc_id            = aws_vpc.main1.id // resource_type.logical_name.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index + local.l)
#   count             = local.l
#   availability_zone = data.aws_availability_zones.available.names[count.index]
#   tags = {
#     Name = "Private_subnet_-${local.ws}-${count.index + 1}"
#   }
# }
