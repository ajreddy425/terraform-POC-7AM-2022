// Nat gateway creation
# resource "aws_nat_gateway" "my_ngw" {
#   allocation_id = aws_eip.eip.id
#   subnet_id     = aws_subnet.subnet1.id

#   tags = {
#     Name = "gw-NAT"
#   }
# }


# // allocate eip for NGW
# resource "aws_eip" "eip" {
#   vpc = true
# }