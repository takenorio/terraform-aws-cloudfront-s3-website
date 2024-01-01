locals {
  domain_name = lower(var.domain_name)
}

module "simple_website" {
  source = "../../"

  domain_name = local.domain_name
}
