terraform {

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3"
    }
    b2 = {
      source  = "Backblaze/b2"
      version = "~> 0"
    }
  }

  backend "remote" {
    organization = "doublevcodes"
    workspaces {
      name = "multiverse"
    }
  }
}


# Provider secrets are stored in Terraform Cloud secrets.

provider "cloudflare" {
  # email = "$CLOUDFLARE_EMAIL"
  # api_token = "$CLOUDFLARE_API_TOKEN"
}

provider "b2" {
  # application_key = "$B2_APPLICATION_KEY"
  # application_key_id = "$B2_APPLICATION_KEY_ID"
}


module "dns" {
  source  = "./modules/dns"
  zone_id = var.vivaanverma_zone_id
}

module "rules" {
  source  = "./modules/rules"
  zone    = var.vivaanverma_zone
  zone_id = var.vivaanverma_zone_id
}

module "buckets" {
  source = "./modules/buckets"
}