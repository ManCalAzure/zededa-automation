terraform {
  required_providers {
    zedcloud = {
      source = "zededa/zedcloud"
      version = "2.4.0"
    }
    local = {
      source = "hashicorp/local"
      version = ">= 2.0.0"
    }
  }
}
