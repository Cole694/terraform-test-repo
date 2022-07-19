terraform {
  required_version = ">=1.2.3"
  required_providers {
    aws = ">=4.20.1"
  }
  cloud {
    organization = "cole-org"

    workspaces {
      name = "terraform-test"
    }
  }
}