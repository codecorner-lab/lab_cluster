variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "deploy_role_arn" {
  type = string
  default = "arn:aws:iam::367515958695:role/eks-deployment-role"
}

variable "eks_cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
  default = "eks-lab"
}

variable "eks_ec2_disk_size" {
  type    = number
  default = 30
}

variable "eks_kubernetes_version" {
  type    = string
  default = "1.24"
}

variable "vpc_id" {
  type = string
  default = "vpc-057eccaf293e4b28f"
}
