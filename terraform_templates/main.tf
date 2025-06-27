//Placeholder File

terraform {

  required_providers {
    gcp = {
      source  = "hashicorp/google"
      version = "6.8.0"
    }
    
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }

  backend "gcs" {
    bucket = "staging_bucket_ai"
    prefix = "terraform/state/abcpqrxyz"
  }

  /*
  backend "pg" {
    
    schema_name = "request_id"
  }*/
}

provider "gcp" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "random_id" "rand_id_1" {
  byte_length = 4
}



