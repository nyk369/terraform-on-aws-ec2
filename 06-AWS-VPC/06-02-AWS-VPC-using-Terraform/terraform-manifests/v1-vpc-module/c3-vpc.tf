#Create VPC Terraform module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  # VPC basic details
 name = "vpc-dev"
 cidr = "10.0.0.0/16"   
 azs                 = ["ap-south-1a", "ap-south-1b"]
 private_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
 public_subnets      = ["10.0.101.0/24", "10.0.102.0/24"]
 
 #Database Subnets 
 create_database_subnet_group = true
 create_database_subnet_route_table = true
 database_subnets    = ["10.0.151.0/24", "10.0.152.0/24"]
 #create_database_nat_gateway_route = true
 #create_database_internet_gateway_route = true 

 #NAT gateways for outbound communication
 enable_nat_gateway = true
 single_nat_gateway = true

 #VPC DNS Parameters
enable_dns_hostnames = true
enable_dns_support = true

public_subnet_tags = {
  type = "public-subnets"
}

private_subnet_tags = {
  type = "private-subnets"
}

database_subnet_tags = {
  type = "database-subnets"
}

tags = {
  Owner = "Naveen"
  Environment = "dev"

}

vpc_tags = {
  name = "vpc-dev"
}

}






