variable "github_repository" {
  type        = string
  description = "GitHub repository to store Flux manifests"
}

variable "target_path" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}

variable "github_token" {
  type        = string
  default     = ""
  description = "The token used to authenticate with the Git repository"
}

variable "private_key" {
  type        = string
  description = "The private key used to authenticate with the Git repository"
}

variable "config_path" {
  type        = string
  default     = "~/.kube/config"
  description = "The path to the kubeconfig file"
}

variable "kube_config_host" {
  type = string
  default = ""
  description = "CLuster cluster endpoint"
}

variable "kube_config_token" {
  type = string
  default = ""
  description = "Cluster cluster token"
  sensitive = true
}

variable "kube_ca_certificate" {
  type = string
  default = "Cluster ca certificate"
  sensitive = true
}
