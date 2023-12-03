data "aws_caller_identity" "this" {}

data "aws_canonical_user_id" "this" {}

data "aws_cloudfront_cache_policy" "this" {
  name = "Managed-CachingOptimized"
}

data "aws_cloudfront_log_delivery_canonical_user_id" "this" {}

data "aws_cloudfront_origin_request_policy" "this" {
  name = "Managed-CORS-S3Origin"
}

data "aws_cloudfront_response_headers_policy" "this" {
  name = "Managed-SecurityHeadersPolicy"
}

data "aws_iam_policy_document" "logs" {
  statement {
    sid       = "S3ServerAccessLogsPolicy"
    effect    = "Allow"
    actions   = ["s3:PutObject"]
    resources = ["${aws_s3_bucket.logs.arn}/s3-logs/*"]

    principals {
      type        = "Service"
      identifiers = ["logging.s3.amazonaws.com"]
    }

    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values   = [aws_s3_bucket.web.arn]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"
      values   = [data.aws_caller_identity.this.account_id]
    }
  }
}

data "aws_iam_policy_document" "web" {
  version = "2012-10-17"

  statement {
    sid       = "AllowCloudFrontServicePrincipalReadOnly"
    effect    = "Allow"
    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.web.arn}/*"]

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:SourceArn"
      values   = [aws_cloudfront_distribution.this.arn]
    }
  }
}

data "aws_route53_zone" "this" {
  name         = var.domain_name
  private_zone = false
}
