# Create a new load balancer
# resource "aws_elb" "my_clb" {
#   name               = "my-clb-demo"
# #   availability_zones = ["us-east-1a", "us-east-1b"]
#   security_groups    = [aws_security_group.my-sg.id]
#   subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]


#   #   access_logs {
#   #     bucket        = "foo"
#   #     bucket_prefix = "bar"
#   #     interval      = 60
#   #   }

#   listener {
#     instance_port     = 80
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }


#   health_check {
#     healthy_threshold   = 2
#     unhealthy_threshold = 2
#     timeout             = 3
#     target              = "HTTP:80/"
#     interval            = 30
#   }

#   instances                   = [aws_instance.ec2_subnet1.id, aws_instance.ec2_private_subnet_1.id]
#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400

#   tags = {
#     Name = "my-terraform-elb"
#   }
# }