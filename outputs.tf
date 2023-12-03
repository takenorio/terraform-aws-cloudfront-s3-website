output "acm_certificate_arn" {
  description = "ARN of the certificate."
  value       = aws_acm_certificate.this.arn
}

output "acm_certificate_domain_name" {
  description = "ARN of the certificate."
  value       = aws_acm_certificate.this.domain_name
}

output "acm_certificate_domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Only set if DNS-validation was used."
  value       = aws_acm_certificate.this.domain_validation_options
}

output "acm_certificate_not_after" {
  description = "Expiration date and time of the certificate."
  value       = aws_acm_certificate.this.not_after
}

output "acm_certificate_not_before" {
  description = "Start of the validity period of the certificate."
  value       = aws_acm_certificate.this.not_before
}

output "acm_certificate_pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  value       = aws_acm_certificate.this.pending_renewal
}

output "acm_certificate_renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  value       = aws_acm_certificate.this.renewal_eligibility
}

output "acm_certificate_renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
  value       = aws_acm_certificate.this.renewal_summary
}

output "acm_certificate_status" {
  description = "Status of the certificate."
  value       = aws_acm_certificate.this.status
}

output "acm_certificate_type" {
  description = "Source of the certificate."
  value       = aws_acm_certificate.this.type
}

output "acm_certificate_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_acm_certificate.this.tags_all
}

output "acm_certificate_validation_id" {
  description = "Time at which the certificate was issued"
  value       = aws_acm_certificate_validation.this.id
}

output "cloudfront_distribution_arn" {
  description = "ARN for the distribution."
  value       = aws_cloudfront_distribution.this.arn
}

output "cloudfront_distribution_caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the distribution configuration."
  value       = aws_cloudfront_distribution.this.caller_reference
}

output "cloudfront_distribution_domain_name" {
  description = "Domain name corresponding to the distribution."
  value       = aws_cloudfront_distribution.this.domain_name
}

output "cloudfront_distribution_etag" {
  description = "Current version of the distribution's information."
  value       = aws_cloudfront_distribution.this.etag
}

output "cloudfront_distribution_hosted_zone_id" {
  description = "CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to."
  value       = aws_cloudfront_distribution.this.hosted_zone_id
}

output "cloudfront_distribution_id" {
  description = "Identifier for the distribution."
  value       = aws_cloudfront_distribution.this.id
}

output "cloudfront_distribution_in_progress_validation_batches" {
  description = "Number of invalidation batches currently in progress."
  value       = aws_cloudfront_distribution.this.in_progress_validation_batches
}

output "cloudfront_distribution_last_modified_time" {
  description = "Date and time the distribution was last modified."
  value       = aws_cloudfront_distribution.this.last_modified_time
}

output "cloudfront_distribution_status" {
  description = "Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system."
  value       = aws_cloudfront_distribution.this.status
}

output "cloudfront_distribution_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudfront_distribution.this.last_modified_time
}

output "cloudfront_distribution_trusted_signers" {
  description = "List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs."
  value       = aws_cloudfront_distribution.this.last_modified_time
}

output "cloudfront_function_arn" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function."
  value       = aws_cloudfront_function.this.arn
}

output "cloudfront_function_etag" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function."
  value       = aws_cloudfront_function.this.etag
}

output "cloudfront_function_live_stage_etag" {
  description = "ETag hash of any LIVE stage of the function."
  value       = aws_cloudfront_function.this.live_stage_etag
}

output "cloudfront_function_status" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED."
  value       = aws_cloudfront_function.this.status
}

output "cloudfront_monitoring_subscription_id" {
  description = "The ID of the CloudFront monitoring subscription, which corresponds to the distribution_id."
  value       = aws_cloudfront_monitoring_subscription.this.id
}

output "cloudfront_origin_access_control_etag" {
  description = "The current version of this Origin Access Control."
  value       = aws_cloudfront_origin_access_control.this.etag
}

output "cloudfront_origin_access_control_id" {
  description = "The unique identifier of this Origin Access Control."
  value       = aws_cloudfront_origin_access_control.this.id
}

output "route53_record_certificate_fqdn" {
  description = "FQDN built using the zone domain and name (certificate)."
  value       = "aws_route53_record.certificate[$var.domain_name].fqdn"
}

output "route53_record_certificate_name" {
  description = "The name of the record (certificate)."
  value       = "aws_route53_record.certificate[$var.domain_name].name"
}

output "route53_record_web_fqdn" {
  description = "FQDN built using the zone domain and name (web)."
  value       = "aws_route53_record.web[$var.domain_name].fqdn"
}

output "route53_record_web_name" {
  description = "The name of the record (web)."
  value       = "aws_route53_record.web[$var.domain_name].name"
}

output "s3_bucket_logs_arn" {
  description = "ARN of the bucket (logs)."
  value       = "aws_s3_bucket.logs.arn"
}

output "s3_bucket_logs_domain_name" {
  description = "Bucket domain name (logs)."
  value       = "aws_s3_bucket.logs.bucket_domain_name"
}

output "s3_bucket_logs_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region (logs)."
  value       = "aws_s3_bucket.logs.hosted_zone_id"
}

output "s3_bucket_logs_id" {
  description = "Name of the bucket (logs)."
  value       = "aws_s3_bucket.logs.id"
}

output "s3_bucket_logs_region" {
  description = "AWS region this bucket resides in (logs)."
  value       = "aws_s3_bucket.logs.region"
}

output "s3_bucket_logs_regional_domain_name" {
  description = "The bucket region-specific domain name (logs)."
  value       = "aws_s3_bucket.logs.bucket_regional_domain_name"
}

output "s3_bucket_logs_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (logs)."
  value       = "aws_s3_bucket.logs.tags_all"
}

output "s3_bucket_acl_logs_id" {
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,) (logs)."
  value       = "aws_s3_bucket_acl.logs.id"
}

output "s3_bucket_ownership_controls_logs_id" {
  description = "S3 Bucket name (logs)."
  value       = "aws_s3_bucket_ownership_controls.logs.id"
}

output "s3_bucket_public_access_block_logs_id" {
  description = "Name of the S3 bucket the configuration is attached to (logs)."
  value       = "aws_s3_bucket_public_access_block.logs.id"
}

output "s3_bucket_server_side_encryption_configuration_logs_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (logs)."
  value       = "aws_s3_bucket_server_side_encryption_configuration.logs.id"
}

output "s3_bucket_versioning_logs_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (logs)."
  value       = "aws_s3_bucket_versioning.logs.id"
}

output "s3_bucket_web_arn" {
  description = "ARN of the bucket (web)."
  value       = "aws_s3_bucket.web.arn"
}

output "s3_bucket_web_domain_name" {
  description = "Bucket domain name (web)."
  value       = "aws_s3_bucket.web.bucket_domain_name"
}

output "s3_bucket_web_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region (web)."
  value       = "aws_s3_bucket.web.hosted_zone_id"
}

output "s3_bucket_web_id" {
  description = "Name of the bucket (web)."
  value       = "aws_s3_bucket.web.id"
}

output "s3_bucket_web_region" {
  description = "AWS region this bucket resides in (web)."
  value       = "aws_s3_bucket.web.region"
}

output "s3_bucket_web_regional_domain_name" {
  description = "The bucket region-specific domain name (web)."
  value       = "aws_s3_bucket.web.bucket_regional_domain_name"
}

output "s3_bucket_web_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (web)."
  value       = "aws_s3_bucket.web.tags_all"
}

output "s3_bucket_acl_web_id" {
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,) (web)."
  value       = "aws_s3_bucket_acl.web.id"
}

output "s3_bucket_logging_web_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided. (web)"
  value       = "aws_s3_bucket_logging.web.id"
}

output "s3_bucket_ownership_controls_web_id" {
  description = "S3 Bucket name (web)."
  value       = "aws_s3_bucket_ownership_controls.web.id"
}

output "s3_bucket_public_access_block_web_id" {
  description = "Name of the S3 bucket the configuration is attached to (web)."
  value       = "aws_s3_bucket_public_access_block.web.id"
}

output "s3_bucket_server_side_encryption_configuration_web_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (web)."
  value       = "aws_s3_bucket_server_side_encryption_configuration.web.id"
}

output "s3_bucket_versioning_web_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (web)."
  value       = "aws_s3_bucket_versioning.web.id"
}
