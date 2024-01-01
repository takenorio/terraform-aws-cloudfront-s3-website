locals {
  domain_name = lower(var.domain_name)
}

module "simple_website" {
  source                  = "../../"
  domain_name             = local.domain_name
  logging_bucket_name     = "${local.domain_name}-logging"
  redirection_bucket_name = "${local.domain_name}-redirection"
  website_bucket_name     = "${local.domain_name}-website"
}
