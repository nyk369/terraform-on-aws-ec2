#Get Amazon Latest AMI ID for Amazon Linux OS
data "aws_ami" "amzlinux" {
  most_recent      = true
  owners = [ Amazon ]
  filter {
    name   = "name"
    values = ["al2023-ami-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["X86_64"]
  }
}