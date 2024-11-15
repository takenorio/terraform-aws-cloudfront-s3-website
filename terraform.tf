terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0"
    }
  }
}
