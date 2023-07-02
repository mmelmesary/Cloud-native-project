module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.13.1"
  cluster_name                   = var.cluster_name
  cluster_version                = var.cluster_version
  vpc_id                         = module.vpc.vpc_id
  subnet_ids                     = module.vpc.private_subnets
  cluster_endpoint_public_access = true
  enable_irsa                    = true
  create_cloudwatch_log_group    = false
  tags = {

    environment = var.env_perfix
  }

  eks_managed_node_groups = {
    one = {
      name = var.node_name

      instance_types = var.node_type

      min_size     = 2
      max_size     = 3
      desired_size = 3
    }
  }
}
