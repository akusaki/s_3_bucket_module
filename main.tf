resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl   = var.acl

  tags = {
    Name = var.bucket_name
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "lifecycle" {
  rule {
    id      = "itssss_ruuule"
    status  = "Enabled"

    transition {
      days          = 30
      storage_class = "GLACIER"
    }

  }

  bucket = aws_s3_bucket.s3_bucket.id
}