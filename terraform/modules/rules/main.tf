terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3"
    }
  }
}

resource "cloudflare_page_rule" "git_redirect" {
  zone_id = var.zone_id
  target  = "git.${var.zone}/*"

  actions {
    forwarding_url {
      url         = "https://github.com/doublevcodes/$1"
      status_code = 301
    }
  }
}