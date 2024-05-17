# AWS EC2 Security Group Terraform Module
# Security Group for Private EC2 Instances
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws/"
  version = "5.1.2"

  name = "private-sg"
  description = "security group with HTTP & SSH port open for entire VPC Block(IPV4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id
  # Ingress Rules and CIDR blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  #Egress Rules -all-all open
  egress_rules = ["all-all"]
  tags = local.common_tags
}


