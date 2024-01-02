# trivy:ignore:AVD-AWS-0088
# trivy:ignore:AVD-AWS-0089
# trivy:ignore:AVD-AWS-0090
# trivy:ignore:AVD-AWS-0132
resource "aws_s3_bucket" "redirection" {
  bucket = var.redirection_bucket_name
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
