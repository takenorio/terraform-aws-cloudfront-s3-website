module "website" {
  source = "../../"

  domain_name = lower(var.domain_name)
}
