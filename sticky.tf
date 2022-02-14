// (optional) enable sticky session for elb

# resource "aws_lb_cookie_stickiness_policy" "sticky" {
#   name                     = "my-stickiness-policy"
#   load_balancer            = aws_elb.my_clb.id
#   lb_port                  = 80
#   cookie_expiration_period = 30
# }