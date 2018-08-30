variable "cloudflare_email" {}
variable "cloudflare_token" {}

provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}

variable "domain" { default = "bolado.network" }
variable "cloud_domain" {}
variable "local_ip" {}
variable "lula_ip" {}

resource "cloudflare_record" "dev" {
  domain = "${var.domain}"
  name = "dev"
  value = "${var.local_ip}"
  type = "A"
  ttl = "120"
}

resource "cloudflare_record" "git_dev" {
  domain = "${var.domain}"
  name = "git.dev"
  value = "${var.local_ip}"
  type = "A"
  ttl = "120"
}

resource "cloudflare_record" "git" {
  domain = "${var.domain}"
  name = "git"
  value = "${var.cloud_domain}"
  type = "CNAME"
  ttl = "1"
}

resource "cloudflare_record" "cloud" {
  domain = "${var.domain}"
  name = "cloud"
  value = "${var.cloud_domain}"
  type = "CNAME"
  ttl = "1"
}

resource "cloudflare_record" "lula" {
  domain = "${var.domain}"
  name = "lula"
  value = "${var.lula_ip}"
  type = "A"
  ttl = "120"
}
