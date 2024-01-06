resource "kind_cluster" "test-cluster" {
  name       = var.cluster-name
  node_image = var.kubernetes-version
  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"
    node {
      role = "control-plane"
      kubeadm_config_patches = [
        "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"

      ]
      extra_port_mappings {
        container_port = 30000
        host_port      = 80
        protocol       = "tcp"
      }
    }
    node {
      role = "worker"
    }
  }
}