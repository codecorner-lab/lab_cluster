terraform {
  required_version = ">= 1.0, < 2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.21.0"
    }
    null = {
      source = "hashicorp/null"
    }
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
  profile = "aws_dev_personal"
  assume_role {
    role_arn = var.deploy_role_arn
  }
}
# provider "kubernetes" {
#   host                   = module.eks-cluster.aws_eks_cluster.endpoint
#   cluster_ca_certificate = base64decode(module.eks-cluster.aws_eks_cluster.certificate_authority[0].data)

#   exec {
#     api_version = "client.authentication.k8s.io/v1beta1"
#     command     = "aws"
#     args = [
#       "eks",
#       "get-token",
#       "--cluster-name",
#       module.eks-cluster.aws_eks_cluster.name,
#       "--role-arn",
#       var.deploy_role_arn,
#       "--region",
#       var.aws_region
#     ]
#   }
# }

# provider "kubectl" {
#   host                   = module.eks-cluster.aws_eks_cluster.endpoint
#   cluster_ca_certificate = base64decode(module.eks-cluster.aws_eks_cluster.certificate_authority[0].data)
#   load_config_file       = false
#   exec {
#     api_version = "client.authentication.k8s.io/v1beta1"
#     command     = "aws"
#     args = [
#       "eks",
#       "get-token",
#       "--cluster-name",
#       module.eks-cluster.aws_eks_cluster.name,
#       "--role-arn",
#       var.deploy_role_arn,
#       "--region",
#       var.aws_region
#     ]
#   }
# }