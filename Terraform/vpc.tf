data "aws_availability_zones" "azs" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  name = "eks-vpc"
  cidr = var.vpc_cidr_block
  private_subnets = var.private_subnet_cidr_block
  public_subnets = var.public_subnet_cidr_block
  azs  = slice(data.aws_availability_zones.azs.names, 0, 3)
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
   
   tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
   }
   public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                      = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"             = 1
  }

}



  
