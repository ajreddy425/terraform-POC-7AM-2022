// carte of private route table

# resource "aws_route_table" "prt_rt" {
#   vpc_id = aws_vpc.main1.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.my_ngw.id
#   }

#   tags = {
#     Name = "Pri_rt_table"
#   }
# }