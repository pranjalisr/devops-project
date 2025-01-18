resource "helm_release" "vault" {
  name       = "vault"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "vault"
  namespace  = "vault"
  create_namespace = true

  set {
    name  = "server.dev.enabled"
    value = "true"
  }
}

# TODO: Add more configuration for production-ready Vault setup

