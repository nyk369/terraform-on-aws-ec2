# Resource: EC2 instance
resource "aws_instance" "test_ec2VM" {
  ami = "ami-013e83f579886baeb"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 demo"
  }
 }