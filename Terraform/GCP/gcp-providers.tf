terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}


provider "google" {
  alias   = "terraform"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "diogo-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}