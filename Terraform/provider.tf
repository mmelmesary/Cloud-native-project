provider "aws" {
  profile = "elmesary"
  region  = var.region
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.saurus.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.saurus.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.saurus-auth.token
}
