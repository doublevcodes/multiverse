terraform {

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3"
    }
  }

  backend "remote" {
    organization = "doublevcodes"
    workspaces {
      name = "multiverse"
    }
  }
}

provider "cloudflare" {
  # email = "$CLOUDFLARE_EMAIL"
  # api_token = "$CLOUDFLARE_API_TOKEN"
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