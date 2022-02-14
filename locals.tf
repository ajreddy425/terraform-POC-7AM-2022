locals {
  x  = data.aws_availability_zones.available.names // dont give at last available.id
  y  = data.aws_caller_identity.current.account_id
  ws = terraform.workspace
  l  = length(data.aws_availability_zones.available.names)
}