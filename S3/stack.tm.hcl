stack {
  name        = "S3"
  description = "S3"
  id          = "4fd6a6fc-2f5e-47c8-9d33-665e678b6f69"
}

globals {
  aws_provider_version = "4.27.0"
  aws_region           = "ap-northeast-1"
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
      region = global.aws_region
    }
  }
}

generate_hcl "main.tf" {
  content {
    resource "aws_s3_bucket" "infraSity" {
      acl = "private"
      bucket = "Sid"
      versioning {
        enabled = true
      }
    }
  }
}