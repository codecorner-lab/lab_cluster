terraform {
  required_version = ">= 1.0, < 2.0"
  required_providers {
    kind = {
      source  = "tehcyx/kind"
      version = "0.2.1"
    }
  }
}
provider "kind" {}