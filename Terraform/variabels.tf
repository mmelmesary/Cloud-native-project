variable "region" {
  type        = string
  description = "The AWS region for the provider to deploy resources into."
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

variable "cluster_version" {
  type        = string
  description = "the version of our k8s cluster"
}