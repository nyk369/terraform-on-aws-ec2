# AWS EC2 Instance Terraform Module
# EC2 Instances that will be created in VPC Private Subnets
module "ec2_private" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  name = "${var.environment}-vm"
  ami = data.aws_ami.aal2023.id
  instance_type = var.instance_type
  user_data = file("${path.module}/apache-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [module.public_bastion_sg.this_security_group_id]
  subnet_id= [
    module.vpc.private_subnets[0],
    module.vpc.private_subnets[1]
  ]
  instance_count = var.private_instance_count
  tags = local.common_tags
}

