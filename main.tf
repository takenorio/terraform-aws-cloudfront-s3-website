module "domain_certificate" {
  source = "./modules/domain-certificate"

  domain_name = var.domain_name
}

module "logging_bucket" {
  source = "./modules/logging-bucket"

  logging_bucket_name = var.logging_bucket_name
  web_bucket_name     = var.web_bucket_name
}
