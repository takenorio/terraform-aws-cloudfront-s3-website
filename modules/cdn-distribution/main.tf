data "aws_cloudfront_cache_policy" "this" {
  name = "Managed-CachingOptimized"
}

data "aws_cloudfront_origin_request_policy" "this" {
  name = "Managed-CORS-S3Origin"
}

data "aws_cloudfront_response_headers_policy" "this" {
  name = "Managed-SecurityHeadersPolicy"
}

data "aws_iam_policy_document" "this" {
  version = "2012-10-17"

  statement {
    sid       = "AllowCloudFrontServicePrincipalReadOnly"
    effect    = "Allow"
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${var.web_bucket_name}/*"]

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

locals {
  logging_bucket_domain_name = "${var.logging_bucket_name}.s3.amazonaws.com"
  website_bucket_domain_name = "${var.web_bucket_name}.s3.amazonaws.com"
}

# trivy:ignore:AVD-AWS-0011
resource "aws_cloudfront_distribution" "this" {
  origin {
    domain_name              = local.website_bucket_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.this.id
    origin_id                = local.website_bucket_domain_name
    origin_path              = ""
  }

  aliases             = [var.domain_name]
  comment             = var.cloudfront_distribution_comment
  default_root_object = ""
  enabled             = true
  http_version        = "http2and3"
  is_ipv6_enabled     = true
  price_class         = "PriceClass_All"
  #web_acl_id          = aws_wafv2_web_acl.this.arn

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 403
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods            = ["GET", "HEAD"]
    cache_policy_id            = data.aws_cloudfront_cache_policy.this.id
    cached_methods             = ["GET", "HEAD"]
    compress                   = true
    origin_request_policy_id   = data.aws_cloudfront_origin_request_policy.this.id
    response_headers_policy_id = data.aws_cloudfront_response_headers_policy.this.id
    target_origin_id           = local.website_bucket_domain_name
    viewer_protocol_policy     = "redirect-to-https"

    function_association {
      event_type   = "viewer-request"
      function_arn = aws_cloudfront_function.this.arn
    }
  }

  logging_config {
    include_cookies = false
    bucket          = local.logging_bucket_domain_name
    prefix          = "cloudfront-logs/"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = var.acm_certificate_arn
    minimum_protocol_version = "TLSv1.2_2021"
    ssl_support_method       = "sni-only"
  }
}

resource "aws_cloudfront_function" "this" {
  name    = "directory-index"
  runtime = "cloudfront-js-2.0"
  comment = "Function to rewrite URI to /index.html if it's root or empty"
  publish = true
  code    = file("${path.module}/function.js")
}

resource "aws_cloudfront_monitoring_subscription" "this" {
  distribution_id = aws_cloudfront_distribution.this.id

  monitoring_subscription {
    realtime_metrics_subscription_config {
      realtime_metrics_subscription_status = "Enabled"
    }
  }
}

resource "aws_cloudfront_origin_access_control" "this" {
  name                              = local.website_bucket_domain_name
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_route53_record" "this" {
  name    = var.domain_name
  type    = "A"
  zone_id = data.aws_route53_zone.this.zone_id

  alias {
    evaluate_target_health = false
    name                   = aws_cloudfront_distribution.this.domain_name
    zone_id                = aws_cloudfront_distribution.this.hosted_zone_id
  }
}

resource "aws_s3_bucket_policy" "this" {
  bucket = var.web_bucket_name
  policy = data.aws_iam_policy_document.this.json
}
