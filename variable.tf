// Variables
// if i want to express cidr_block of VPC as a variable

variable "vpc_cidr" { // variavble "variable_logcal_name"
  description = "Eneter CIDR BLOCK of your VPC"
  default     = "172.16.0.0/16" // if you want to give work to the variale block, you should put commrnt to 
  // the default values
}

# variable "vpc_tag" {    // everything inside a varibale block is optional
#   description = "Enter Name of your VPC "
#   default     = "terraform-var-demo"
# } 

// Subnet variables 

variable "subnet1_cidr" {
  description = "enter CIDR block of subnet 01"
  default     = "172.16.0.0/24"

}


variable "no_of_ec2_ins" {
  default     = 2
  description = "Enter no.of ec2 instances you want to launch"
}
