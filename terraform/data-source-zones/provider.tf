terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 3.33"
    }
  }
}

provider "okta" {
}