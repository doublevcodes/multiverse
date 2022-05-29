terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 3"
    }
  }
}

resource "cloudflare_record" "www_redirect" {
  zone_id = var.zone_id
  type = "CNAME"
  name = "www"
  value = "@"
  proxied = true
}