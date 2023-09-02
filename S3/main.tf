terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "ap-northeast-1"
  access_key = "AKIARQSGNPPR24JUC3QG"
  secret_key = "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"
}
resource "aws_s3_bucket" "infraSity" {
  bucket = "SIDVJSINGH"
  acl = "private"
  versioning {
    enabled = true
  }
  tags = {
    name = "demo"
  }
}