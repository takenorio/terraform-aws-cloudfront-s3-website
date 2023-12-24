module "domain_certificate" {
  source = "./modules/domain-certificate"

  domain_name = var.domain_name
}

module "logging_bucket" {
  source = "./modules/logging-bucket"

  logging_bucket_name = var.logging_bucket_name
  web_bucket_name     = var.web_bucket_name
}

module "website_bucket" {
  source = "./modules/website-bucket"

  logging_bucket_name = var.logging_bucket_name
  web_bucket_name     = var.web_bucket_name
}

module "cdn_distribution" {
  source = "./modules/cdn-distribution"

  acm_certificate_arn             = module.domain_certificate.acm_certificate_arn
  cloudfront_distribution_comment = var.cloudfront_distribution_comment
  domain_name                     = var.domain_name
  logging_bucket_name             = var.logging_bucket_name
  web_bucket_name                 = var.web_bucket_name

  #s3_bucket_web_regional_domain_name  = module.website_bucket.s3_bucket_regional_domain_name
  #s3_bucket_logs_regional_domain_name = module.logging_bucket.s3_bucket_regional_domain_name
}
