#Input Variables
#AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-south-1"
  }
#AWS EC2 instance Type
variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
  }
#AWS Instance Key-Pair
variable "instance_keypair" {
  description = "AWS EC2 keypair that need to be associated with EC2 instance"
  type =  string
  default = "terraform-key"
  }



