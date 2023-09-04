resource "aws_s3_bucket" "infraSity" {
  bucket = "SIDVJSINGH"
  acl = "private"
  versioning {
    enabled = true
  }
}