data "aws_ami" "amzlinux" {
  most_recent = true
  owners = ["amazon"]  # or the specific AWS account ID if it's a custom AMI

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]  # Adjust the pattern to match the desired AMI
  }
  filter {
    name = "name"
    values = [ "aal2023-ami-hvm-*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }
}