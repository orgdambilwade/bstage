//Placeholder File

terraform {

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.41.0"
    }
  }

  backend "pg" {
    schema_name = "request_id"
  }
}

provider "google" {
  project = "eternal-argon-461501-a8"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource "random_id" "rand_id_1" {
  byte_length = 4
}



