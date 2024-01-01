data "aws_canonical_user_id" "this" {}

data "aws_cloudfront_log_delivery_canonical_user_id" "this" {}

# trivy:ignore:AVD-AWS-0089
resource "aws_s3_bucket" "logging" {
  bucket = var.logging_bucket_name
}

resource "aws_s3_bucket_acl" "logging" {
  bucket     = aws_s3_bucket.logging.id
  depends_on = [aws_s3_bucket_ownership_controls.logging]

  access_control_policy {
    grant {
      grantee {
        id   = data.aws_canonical_user_id.this.id
        type = "CanonicalUser"
      }
      permission = "FULL_CONTROL"
    }
    grant {
      grantee {
        id   = data.aws_cloudfront_log_delivery_canonical_user_id.this.id
        type = "CanonicalUser"
      }
      permission = "FULL_CONTROL"
    }
    owner {
      id = data.aws_canonical_user_id.this.id
    }
  }
}

resource "aws_s3_bucket_ownership_controls" "logging" {
  bucket = aws_s3_bucket.logging.bucket

  rule {
    object_ownership = "ObjectWriter"
  }
}

resource "aws_s3_bucket_public_access_block" "logging" {
  bucket                  = aws_s3_bucket.logging.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# trivy:ignore:AVD-AWS-0132
resource "aws_s3_bucket_server_side_encryption_configuration" "logging" {
  bucket = aws_s3_bucket.logging.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "logging" {
  bucket = aws_s3_bucket.logging.bucket
  versioning_configuration {
    status = "Enabled"
  }
}
