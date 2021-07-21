variable "domain_name" {
  description = "Domain Name"
  default = "bigtimetapin.com"
}

variable "cert_arn" {
  description = "SSL Cert"
  default = "arn:aws:acm:us-east-1:504084586672:certificate/2553d85f-2157-4288-aaed-44a0942c1ef9"
}
