locals {
  logging_bucket_name     = "${var.domain_name}-logging"
  redirection_bucket_name = "${var.domain_name}-redirection"
  website_bucket_name     = "${var.domain_name}-website"
}

module "domain_certificate" {
  source = "./modules/domain-certificate"

  domain_name = var.domain_name
}

module "logging_bucket" {
  source = "./modules/logging-bucket"

  logging_bucket_name = local.logging_bucket_name
}

module "redirection_bucket" {
  source = "./modules/redirection-bucket"

  domain_name             = module.domain_certificate.acm_certificate_domain_name
  logging_bucket_name     = module.logging_bucket.s3_bucket_id
  redirection_bucket_name = local.redirection_bucket_name
}

module "website_bucket" {
  source = "./modules/website-bucket"

  logging_bucket_arn  = module.logging_bucket.s3_bucket_arn
  logging_bucket_name = module.logging_bucket.s3_bucket_id
  website_bucket_name = local.website_bucket_name
}

module "cdn_distribution" {
  source = "./modules/cdn-distribution"

  acm_certificate_arn          = module.domain_certificate.acm_certificate_arn
  domain_name                  = module.domain_certificate.acm_certificate_domain_name
  logging_regional_domain_name = module.logging_bucket.s3_bucket_regional_domain_name
  website_bucket_name          = module.website_bucket.s3_bucket_id
  website_regional_domain_name = module.website_bucket.s3_bucket_regional_domain_name
}
