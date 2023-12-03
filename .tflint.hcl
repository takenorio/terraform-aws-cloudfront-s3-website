plugin "aws" {
  enabled    = true
  deep_check = false
  source     = "github.com/terraform-linters/tflint-ruleset-aws"
  version    = "0.28.0"
}
