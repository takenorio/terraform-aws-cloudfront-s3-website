resource "aws_s3_bucket" "redirection" {
  bucket = var.redirection_bucket_name
}

resource "aws_s3_bucket_logging" "redirection" {
  bucket        = aws_s3_bucket.redirection.id
  target_bucket = var.logging_bucket_name
  target_prefix = "s3-redirection-logs/"
}

resource "aws_s3_bucket_ownership_controls" "redirection" {
  bucket = aws_s3_bucket.redirection.bucket

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "redirection" {
  bucket                  = aws_s3_bucket.redirection.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# trivy:ignore:AVD-AWS-0132
resource "aws_s3_bucket_server_side_encryption_configuration" "redirection" {
  bucket = aws_s3_bucket.redirection.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "redirection" {
  bucket = aws_s3_bucket.redirection.bucket
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_website_configuration" "redirection" {
  bucket = var.redirection_bucket_name

  redirect_all_requests_to {
    host_name = var.domain_name
    protocol  = "https"
  }
}
