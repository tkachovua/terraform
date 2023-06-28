provider "google" {
  project = var.GOOGLE_PROJECT
  region  = var.GOOGLE_REGION
}

module "gke_cluster" {
  source         = "./modules/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = var.GKE_NUM_NODES
}

module "tls_private_key" {
  source = "./modules/tf-hashicorp-tls-keys"
  algorithm = "RSA"
}

terraform {
  backend "gcs" {
    bucket = "bucketeuropewest2"
    prefix = "terraform/state"
  }
}