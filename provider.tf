terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  # Configuration options
  access_key = var.akey-ha
  secret_key = var.skey-ha
  region     = var.region-ha
}

terraform {
  cloud {
    #organization = "natwest-training"
    organization = "hanatwest"
    workspaces {
      name = "hanatwest-ws1"
    }
  }
}

