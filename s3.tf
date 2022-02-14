// creation of S3 bucket (FAQ)

# resource "aws_s3_bucket" "my_s3" {
#   bucket = "my-tf-0902-bucket"
#   acl    = "private"

#  lifecycle_rule {
#         id      = "quarterly_retention"
#         prefix  = "folder/"
#         enabled = true

#         expiration {
#             days = 92
#         }
#     }

#   tags = {
#     Name        = "my-S3-bucket"
#     Environment = local.ws
#   }
# }

