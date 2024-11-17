# ----------------------------------------------------------------------------
# Output related to Certificate Manager
# ----------------------------------------------------------------------------
output "acm_certificate_arn" {
  description = "ARN of the certificate."
  value       = aws_acm_certificate.this.arn
}

output "acm_certificate_domain_name" {
  description = "ARN of the certificate."
  value       = aws_acm_certificate.this.domain_name
}

output "acm_certificate_domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation."
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
  description = "Time at which the certificate was issued."
  value       = aws_acm_certificate_validation.this.id
}

# ----------------------------------------------------------------------------
# Output related to Simple Storage Service (logging)
# ----------------------------------------------------------------------------
output "s3_bucket_logging_arn" {
  description = "ARN of the bucket."
  value       = aws_s3_bucket.logging.arn
}

output "s3_bucket_logging_domain_name" {
  description = "Bucket domain name."
  value       = aws_s3_bucket.logging.bucket_domain_name
}

output "s3_bucket_logging_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region."
  value       = aws_s3_bucket.logging.hosted_zone_id
}

output "s3_bucket_logging_id" {
  description = "Name of the bucket."
  value       = aws_s3_bucket.logging.id
}

output "s3_bucket_logging_region" {
  description = "AWS region this bucket resides in."
  value       = aws_s3_bucket.logging.region
}

output "s3_bucket_logging_regional_domain_name" {
  description = "The bucket region-specific domain name."
  value       = aws_s3_bucket.logging.bucket_regional_domain_name
}

output "s3_bucket_logging_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_bucket.logging.tags_all
}

output "s3_bucket_acl_logging_id" {
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,)."
  value       = aws_s3_bucket_acl.logging.id
}

output "s3_bucket_ownership_controls_logging_id" {
  description = "S3 Bucket name."
  value       = aws_s3_bucket_ownership_controls.logging.id
}

output "s3_bucket_public_access_block_logging_id" {
  description = "Name of the S3 bucket the configuration is attached to."
  value       = aws_s3_bucket_public_access_block.logging.id
}

output "s3_bucket_server_side_encryption_configuration_logging_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_server_side_encryption_configuration.logging.id
}

output "s3_bucket_versioning_logging_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_versioning.logging.id
}

# ----------------------------------------------------------------------------
# Output related to Simple Storage Service (website)
# ----------------------------------------------------------------------------
output "s3_bucket_website_arn" {
  description = "ARN of the bucket."
  value       = aws_s3_bucket.website.arn
}

output "s3_bucket_website_domain_name" {
  description = "Bucket domain name."
  value       = aws_s3_bucket.website.bucket_domain_name
}

output "s3_bucket_website_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region."
  value       = aws_s3_bucket.website.hosted_zone_id
}

output "s3_bucket_website_id" {
  description = "Name of the bucket."
  value       = aws_s3_bucket.website.id
}

output "s3_bucket_website_region" {
  description = "AWS region this bucket resides in"
  value       = aws_s3_bucket.website.region
}

output "s3_bucket_website_regional_domain_name" {
  description = "The bucket region-specific domain name."
  value       = aws_s3_bucket.website.bucket_regional_domain_name
}

output "s3_bucket_website_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_bucket.website.tags_all
}

output "s3_bucket_logging_website_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_logging.website.id
}

output "s3_bucket_ownership_controls_website_id" {
  description = "S3 Bucket name."
  value       = aws_s3_bucket_ownership_controls.website.id
}

output "s3_bucket_public_access_block_website_id" {
  description = "Name of the S3 bucket the configuration is attached to."
  value       = aws_s3_bucket_public_access_block.website.id
}

output "s3_bucket_server_side_encryption_configuration_website_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_server_side_encryption_configuration.website.id
}

output "s3_bucket_versioning_website_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_versioning.website.id
}

# ----------------------------------------------------------------------------
# Output related to CloudFront
# ----------------------------------------------------------------------------
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

# ----------------------------------------------------------------------------
# Output related to Route 53
# ----------------------------------------------------------------------------
output "route53_record_certificate_fqdn" {
  description = "FQDN built using the zone domain and name."
  value       = aws_route53_record.certificate[var.domain_name].fqdn
}

output "route53_record_certificate_name" {
  description = "The name of the record."
  value       = aws_route53_record.certificate[var.domain_name].name
}

output "route53_record_website_fqdn" {
  description = "FQDN built using the zone domain and name."
  value       = "aws_route53_record.this[var.domain_name].fqdn"
}

output "route53_record_website_name" {
  description = "The name of the record."
  value       = "aws_route53_record.this[var.domain_name].name"
}
