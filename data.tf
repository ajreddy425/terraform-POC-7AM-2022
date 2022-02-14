data "aws_caller_identity" "current" {}
# data "aws_region" "region_name" {}
data "aws_availability_zones" "available" {
  state = "available"
}

