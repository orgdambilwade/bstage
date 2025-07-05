terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.41.0"
    }
    
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }

  backend "gcs" {
    bucket = "STAGING_BUCKET"
    prefix = "terraform/state/REQUEST_ID"
  }

}

provider "google" {
  project = var.project_id_root
  region  = var.region_root
  zone    = var.zone_root
}





