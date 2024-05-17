# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastion Host
module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws/"
  version = "5.1.2"

  name = "public-bastion-sg"
  description = "security group with SSH port open for everybody(IPV4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id
  # Ingress Rules and CIDR blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  #Egress Rules -all-all open
  egress_rules = ["all-all"]
  tags = local.common_tags
}
