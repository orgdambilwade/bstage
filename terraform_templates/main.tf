//Placeholder File

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
    bucket = "staging_bucket_ai"
    prefix = "terraform/state/REQUEST_ID"
  }

}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "random_id" "rand_id_1" {
  byte_length = 4
}



