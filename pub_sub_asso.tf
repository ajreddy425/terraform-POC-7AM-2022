// subnets association to the public route table

# resource "aws_route_table_association" "pub_asso_subnet1" {
#   subnet_id      = aws_subnet.subnet1.id
#   route_table_id = aws_route_table.pub_rt.id
# }


# resource "aws_route_table_association" "pub_asso_subnet2" {
#   subnet_id      = aws_subnet.subnet2.id
#   route_table_id = aws_route_table.pub_rt.id
# }


// anothe way 


# resource "aws_route_table_association" "public-assoc" {
#     subnet_id = ["${aws_subnet.subnet1.id}","${aws_subnet.subnet2.id}"]
#     route_table_id = "${aws_route_table.pub_rt.id}"
# }

//
