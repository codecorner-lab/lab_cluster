resource "helm_release" "fleet" {
  name       = "fleet"
  repository = "https://rancher.github.io/fleet-helm-charts/"
  chart      = "fleet"
  namespace  = "cattle-fleet-system"
  # Add additional release configuration as needed

  depends_on = [helm_release.fleet_crd]
}

resource "helm_release" "fleet_crd" {
  name       = "fleet-crd"
  repository = "https://rancher.github.io/fleet-helm-charts/"
  chart      = "fleet-crd"
  namespace  = "cattle-fleet-system"
  create_namespace = true
}