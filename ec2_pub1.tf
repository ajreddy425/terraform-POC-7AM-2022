// ec2 instancde in public subnet 1

# resource "aws_instance" "ec2_subnet1" {
#   ami                         = "ami-0a8b4cd432b1c3063"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.subnet1.id
#   vpc_security_group_ids      = [aws_security_group.my-sg.id]
#   associate_public_ip_address = true
#   user_data                   = file("./scripts/apache1.sh")
#   key_name                    = "2501keypair"
#   count                       = var.no_of_ec2_ins

#   tags = {
#     Name = "web_server1-${count.index + 1}" // count.index is built in function
#     // it should be start with zero.
#   } // count.index supports arthmetic operations
# }


// security group for ec2

# resource "aws_security_group" "my-sg" {
#   name        = "my_sg"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main1.id

#   ingress {
#     description = "HTTP" // optional (any name you can give)
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp" // mandatory
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#   ingress {
#     description = "SSH" // optional (any name you can give)
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp" // mandatory
#     cidr_blocks = ["0.0.0.0/0"]
#   }


#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "all_sg"
#   }
# }