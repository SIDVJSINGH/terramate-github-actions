stack {
  name        = "S3"
  description = "S3"
  id          = "4fd6a6fc-2f5e-47c8-9d33-665e678b6f69"
}

globals {
  aws_provider_version = "4.27.0"
  region     = "ap-northeast-1"
}

generate_hcl "provider.tf" {
  content {
    terraform {
      required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = global.aws_provider_version
        }
      }
    }
    provider "aws" {
      region     = global.aws_region
      access_key = global.aws_access_key
      secret_key = global.aws_secret_key
    }
  }
}

generate_hcl "main.tf" {
  content {
    resource "aws_s3_bucket" "infraSity" {
      acl = "private"
      versioning {
        enabled = true
      }
    }
  }
}