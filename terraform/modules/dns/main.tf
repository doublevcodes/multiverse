terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3"
    }
  }
}

resource "cloudflare_record" "www_redirect" {
  zone_id = var.zone_id
  type    = "CNAME"
  name    = "www"
  value   = "@"
  proxied = true
}

resource "cloudflare_record" "git_redirect" {
  zone_id = var.zone_id
  type    = "AAAA"
  name    = "git"
  value   = "100::"
  proxied = true
}

resource "cloudflare_record" "test_record" {
  zone_id = var.zone_id
  type    = "TXT"
  name    = "@"
  value   = "test" 
}