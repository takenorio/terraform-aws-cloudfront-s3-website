module "domain_certificate" {
  source = "./modules/domain-certificate"

  domain_name = var.domain_name
}
