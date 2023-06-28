variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project name"
}

variable "GOOGLE_REGION" {
  type        = string
  description = "GCP region to use"
}

variable "GKE_NUM_NODES" {
  type        = number
  default     = 1
  description = "GKE nodes number"
}

variable "GITHUB_OWNER" {
  type        = string
  description = "The GitHub owner repository to use"
}

variable "GITHUB_TOKEN" {
  type        = string
  description = "GitHub personal access token"
}

variable "FLUX_GITHUB_REPO" {
  type        = string
  default     = "flux-gitops"
  description = "Flux GitOps repo"
}

variable "FLUX_GITHUB_TARGET_PATH" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}