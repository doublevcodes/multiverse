terraform {
  required_providers {
    b2 = {
      source  = "Backblaze/b2"
      version = "~> 0"
    }
  }
}

resource "b2_bucket" "multiverse_cdn" {
  bucket_name = "multiverse-cdn"
  bucket_type = "allPublic"
}