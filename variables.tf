variable "cluster-name" {
  type = string
  default = "lab-cluster"
}

variable "kubernetes-version" {
  type = string
  default = "kindest/node:v1.25.11"
}

