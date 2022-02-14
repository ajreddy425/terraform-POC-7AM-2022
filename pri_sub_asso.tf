// subnets association to the priavate  route table

# resource "aws_route_table_association" "prt_asso_subnet1" {
#   subnet_id      = aws_subnet.subnet2.id
#   route_table_id = aws_route_table.prt_rt.id
# }
