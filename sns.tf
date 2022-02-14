// sns topic

# resource "aws_sns_topic" "sns_terraform" {
#   name                        = "my-sns-terraform"
#   fifo_topic                  = false
#   content_based_deduplication = false
# }


// creating subscription

# resource "aws_sns_topic_subscription" "topic_subscription" {
#   topic_arn = "arn:aws:sns:us-east-1:940080462293:my-sns-terraform"
#   protocol  = "email" // email-json
#   endpoint  = "ajreddy1997@gmail.com"
# }

