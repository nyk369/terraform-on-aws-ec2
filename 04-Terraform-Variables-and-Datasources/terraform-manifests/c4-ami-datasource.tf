data "aws_ami" "aal2023" {
  most_recent = true
  owners = ["amazon"]  # or the specific AWS account ID if it's a custom AMI

   # Adjust the pattern to match the desired AMI}
  filter {
    name = "name"
    values = [ "al2023-ami-2023.4.20240429.0-kernel-6.1-x86_64" ]
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