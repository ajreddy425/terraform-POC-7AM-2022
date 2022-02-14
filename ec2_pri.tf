// ec2 instancde in private subnet 1

# resource "aws_instance" "ec2_private_subnet_1" {
#   ami                         = "ami-0a8b4cd432b1c3063"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.subnet2.id
#   vpc_security_group_ids      = [aws_security_group.my-sg.id]
#   associate_public_ip_address = false
#   user_data                   = file("./scripts/apache2.sh")
#   key_name                    = "2501keypair"

#   tags = {
#     Name = "web_server2"
#   }
# }
