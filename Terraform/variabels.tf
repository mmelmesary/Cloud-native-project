variable "region" {
  type        = string
  description = "The AWS region for the provider to deploy resources into."
  default = "us-east-1"
}


variable "vpc_cidr_block" {
  type        = string
  description = "The IP address range of the environment in CIDR notation."
}

variable "public_subnet_cidr_block" {
  type        = list(string)
  description = "The CIDR block for 'public network'"
}

variable "private_subnet_cidr_block" {
  type        = list(string)
  description = "The CIDR block for private network"
}

variable "cluster_name" {
  type        = string
  description = "the name of our eks cluster"
}

variable "env_perfix" {
 type = string
 default = "dev"
}

variable "cluster_version" {
  type        = string
  description = "the version of our k8s cluster"
}

variable "node_type" {
  type = list(string)
  default = ["t3.small"]
}
variable "node_name" {
  type = string
  description = "node group name"
}