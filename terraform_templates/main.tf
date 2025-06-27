//Placeholder File

terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.41.0"
    }
  }

  /*backend "gcs" {
    bucket = "staging_bucket_ai"
    prefix = "terraform/state/request_id"
  }*/
}


provider "google" {
  project = "eternal-argon-461501-a8"
  region  = "us-central1"
  zone    = "us-central1-a"
  impersonate_service_account = "service-account-1@eternal-argon-461501-a8.iam.gserviceaccount.com"
}

resource "random_id" "rand_id_1" {
  byte_length = 4
}

module "compute" {
    source = "./compute"
    tf_unique_id = "compute${random_id.rand_id_1.hex}"
}

output "computeall" {
  value = module.compute
}

module "storage" {
    source = "./storage"
    tf_unique_id = "storage${random_id.rand_id_1.hex}"
}

output "storageall" {
  value = module.storage
}

module "cloudrun" {
    source = "./cloudrun"
    tf_unique_id = "cloudrun${random_id.rand_id_1.hex}"
}

output "cloudrunall" {
  value = module.cloudrun
}

module "vertexaiworkbench" {
    source = "./vertexaiworkbench"
    tf_unique_id = "vertexaiworkbench${random_id.rand_id_1.hex}"
}

output "vertexaiworkbenchall" {
  value = module.vertexaiworkbench
}

