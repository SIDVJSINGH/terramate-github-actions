terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "ap-northeast-1"
}
resource "aws_s3_bucket" "infraSity" {
  bucket = "sidvjsingh"
  acl = "private"
  versioning {
    enabled = true
  }
  tags = {
    name = "demo"
  }
}