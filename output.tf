# output "instance_id" {
#   value = aws_instance.ec2_subnet1.1.id
# }
output "my_reg_name" {
  value = local.x

}

output "no_of_azs_inRegion" {
  value = length(local.x)
}
# output "my_reg_name" {
#   value = data.aws_region.region_name.id

# }

output "account_id" { // output logical name can be anything
  value = local.y
}


# output "VPC_ID" {
#   value = aws_vpc.main1.id // VPC resource_type.logaical_name.id
# }

# output "subnet_id" {
#   value = aws_subnet.subnet1.id

# }

# output "subnet2_id" {
#   value = aws_subnet.subnet2.id
# }





