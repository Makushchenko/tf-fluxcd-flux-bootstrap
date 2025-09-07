provider "flux" {
  kubernetes = {
    host                   = var.kube_config_host
    token                  = var.kube_config_token
    cluster_ca_certificate = var.kube_ca_certificate
  }
  git = {
    url = "https://github.com/${var.github_repository}.git"
    http = {
      username = "git" # This can be any string when using a personal access token
      password = var.github_token
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path                   = var.target_path
  kustomization_override = var.kustomization_override
}