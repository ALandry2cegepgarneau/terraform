provider "cloudflare" {
  email     = "ALandry2@cegepgarneau.ca"
  api_token = "TVUHdfnz_h6KcX943Kz-iOMkms-THvvUmRCfEnGI"
}

variable "zone_id" {
  default = "bb985928fe5231d470ad8f49ce0a1728"
}

variable "domain" {
  default = "demo123456789.tk"
}

resource "cloudflare_record" "patates" {
  zone_id = var.zone_id
  name    = "patates"
  value   = "20.121.95.7"
  type    = "A"
  proxied = true
}