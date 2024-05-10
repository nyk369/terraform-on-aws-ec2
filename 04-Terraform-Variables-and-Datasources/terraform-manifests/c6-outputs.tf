# Terraform output values

#EC2 instance public Ip
output "instance_publicip"{
  description = "EC2 Instance Public Ip"
  value = "aws_instance.test_ec2VM.public_ip"
}

#EC2 Instance Public DNS

output "instance_publicdns"{
  description = "EC2 Instance Public DNS"
  value = "aws_instance.test_ec2VM.public_dns"
}
