terraform {

  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
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

module "dns_records" {
  source = "./modules/dns"
  zone_id = var.vivaanverma_zone_id
}