data "aws_cloudfront_cache_policy" "this" {
  name = "Managed-CachingOptimized"
}

data "aws_cloudfront_origin_request_policy" "this" {
  name = "Managed-CORS-S3Origin"
}

data "aws_cloudfront_response_headers_policy" "this" {
  name = "Managed-SecurityHeadersPolicy"
}

data "aws_iam_policy_document" "redirection" {
  version = "2012-10-17"

  statement {
    sid       = "AllowCloudFrontServicePrincipalReadOnly"
    effect    = "Allow"
    actions   = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${var.redirection_bucket_name}/*"]

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:SourceArn"
      values   = [aws_cloudfront_distribution.redirection.arn]
    }
  }
}

data "aws_route53_zone" "this" {
  name         = var.domain_name
  private_zone = false
}

data "template_file" "redirection" {
  template = file("${path.module}/function.js.tpl")

  vars = {
    new_host = var.domain_name
  }
}

locals {
  redirect_source_domain_name = "www.${var.domain_name}"
}

# trivy:ignore:AVD-AWS-0010
# trivy:ignore:AVD-AWS-0011
resource "aws_cloudfront_distribution" "redirection" {
  origin {
    connection_attempts      = 3
    connection_timeout       = 10
    domain_name              = var.redirection_regional_domain_name
    origin_access_control_id = aws_cloudfront_origin_access_control.redirection.id
    origin_id                = var.redirection_regional_domain_name
    origin_path              = ""
  }

  aliases             = [local.redirect_source_domain_name]
  comment             = var.cloudfront_distribution_comment
  default_root_object = ""
  enabled             = true
  http_version        = "http2and3"
  is_ipv6_enabled     = true
  price_class         = "PriceClass_All"

  default_cache_behavior {
    allowed_methods            = ["GET", "HEAD"]
    cache_policy_id            = data.aws_cloudfront_cache_policy.this.id
    cached_methods             = ["GET", "HEAD"]
    compress                   = true
    origin_request_policy_id   = data.aws_cloudfront_origin_request_policy.this.id
    response_headers_policy_id = data.aws_cloudfront_response_headers_policy.this.id
    target_origin_id           = var.redirection_regional_domain_name
    viewer_protocol_policy     = "redirect-to-https"

    function_association {
      event_type   = "viewer-request"
      function_arn = aws_cloudfront_function.redirection.arn
    }
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

resource "aws_cloudfront_function" "redirection" {
  name    = "redirect-non-www"
  runtime = "cloudfront-js-2.0"
  comment = "Redirects www to non-www URLs via 302"
  publish = true
  code    = data.template_file.redirection.rendered
}

resource "aws_cloudfront_monitoring_subscription" "redirection" {
  distribution_id = aws_cloudfront_distribution.redirection.id

  monitoring_subscription {
    realtime_metrics_subscription_config {
      realtime_metrics_subscription_status = "Enabled"
    }
  }
}

resource "aws_cloudfront_origin_access_control" "redirection" {
  name                              = var.redirection_regional_domain_name
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_route53_record" "redirection" {
  name    = local.redirect_source_domain_name
  type    = "A"
  zone_id = data.aws_route53_zone.this.zone_id

  alias {
    evaluate_target_health = false
    name                   = aws_cloudfront_distribution.redirection.domain_name
    zone_id                = aws_cloudfront_distribution.redirection.hosted_zone_id
  }
}

resource "aws_s3_bucket_policy" "redirection" {
  bucket = var.redirection_bucket_name
  policy = data.aws_iam_policy_document.redirection.json
}
