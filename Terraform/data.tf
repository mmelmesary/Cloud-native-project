locals {
  cluster_name = var.cluster_name
}

data "aws_availability_zones" "azs" {}

data "aws_eks_cluster" "saurus" {
   name = module.eks.cluster_id
}
data "aws_eks_cluster_auth" "saurus-auth" {
 name = module.eks.cluster_id
}


