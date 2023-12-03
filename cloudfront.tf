# trivy:ignore:AVD-AWS-0011
resource "aws_cloudfront_distribution" "this" {
  origin {
    domain_name              = aws_s3_bucket.web.bucket_regional_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.this.id
    origin_id                = aws_s3_bucket.web.bucket_regional_domain_name
    origin_path              = ""
  }

  aliases             = [var.domain_name]
  comment             = var.cloudfront_distribution_comment
  default_root_object = ""
  enabled             = true
  http_version        = "http2and3"
  is_ipv6_enabled     = true
  price_class         = "PriceClass_All"
  #web_acl_id         = aws_wafv2_web_acl.this.arn

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
    target_origin_id           = aws_s3_bucket.web.bucket_regional_domain_name
    viewer_protocol_policy     = "redirect-to-https"

    function_association {
      event_type   = "viewer-request"
      function_arn = aws_cloudfront_function.this.arn
    }
  }

  logging_config {
    include_cookies = false
    bucket          = aws_s3_bucket.logs.bucket_regional_domain_name
    prefix          = "cloudfront-logs/"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn      = aws_acm_certificate.this.arn
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
  name                              = aws_s3_bucket.web.bucket_regional_domain_name
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}
