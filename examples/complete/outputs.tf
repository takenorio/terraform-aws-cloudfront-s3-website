# ----------------------------------------------------------------------------
# Output from domaion_certificate module
# ----------------------------------------------------------------------------
# resource of aws_certificate
output "acm_certificate_arn" {
  description = "ARN of the certificate."
  value       = module.simple_website.acm_certificate_arn
}

output "acm_certificate_domain_name" {
  description = "ARN of the certificate."
  value       = module.simple_website.acm_certificate_domain_name
}

output "acm_certificate_domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation."
  value       = module.simple_website.acm_certificate_domain_validation_options
}

output "acm_certificate_not_after" {
  description = "Expiration date and time of the certificate."
  value       = module.simple_website.acm_certificate_not_after
}

output "acm_certificate_not_before" {
  description = "Start of the validity period of the certificate."
  value       = module.simple_website.acm_certificate_not_before
}

output "acm_certificate_pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  value       = module.simple_website.acm_certificate_pending_renewal
}

output "acm_certificate_renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  value       = module.simple_website.acm_certificate_renewal_eligibility
}

output "acm_certificate_renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
  value       = module.simple_website.acm_certificate_renewal_summary
}

output "acm_certificate_status" {
  description = "Status of the certificate."
  value       = module.simple_website.acm_certificate_status
}

output "acm_certificate_type" {
  description = "Source of the certificate."
  value       = module.simple_website.acm_certificate_type
}

output "acm_certificate_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = module.simple_website.acm_certificate_tags_all
}

output "acm_certificate_validataion_id" {
  description = "Time at which the certificate was issued"
  value       = module.simple_website.acm_certificate_validation_id
}

# resource of aws_route53_record
output "route53_record_certificate_fqdn" {
  description = "FQDN built using the zone domain and name (certificate)."
  value       = module.simple_website.route53_record_certificate_fqdn
}

output "route53_record_certificate_name" {
  description = "The name of the record (certificate)."
  value       = module.simple_website.route53_record_certificate_name
}

# ----------------------------------------------------------------------------
# Ooutput from cdn_distribution modulemodule
# ----------------------------------------------------------------------------
# resource of aws_cloudfront_distribution
output "cloudfront_distribution_arn" {
  description = "ARN for the distribution."
  value       = module.simple_website.cloudfront_distribution_arn
}

output "cloudfront_distribution_caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the distribution configuration."
  value       = module.simple_website.cloudfront_distribution_caller_reference
}

output "cloudfront_distribution_domain_name" {
  description = "Domain name corresponding to the distribution."
  value       = module.simple_website.cloudfront_distribution_domain_name
}

output "cloudfront_distribution_etag" {
  description = "Current version of the distribution's information."
  value       = module.simple_website.cloudfront_distribution_etag
}

output "cloudfront_distribution_hosted_zone_id" {
  description = "CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to."
  value       = module.simple_website.cloudfront_distribution_hosted_zone_id
}

output "cloudfront_distribution_id" {
  description = "Identifier for the distribution."
  value       = module.simple_website.cloudfront_distribution_id
}

output "cloudfront_distribution_in_progress_validation_batches" {
  description = "Number of invalidation batches currently in progress."
  value       = module.simple_website.cloudfront_distribution_in_progress_validation_batches
}

output "cloudfront_distribution_last_modified_time" {
  description = "Date and time the distribution was last modified."
  value       = module.simple_website.cloudfront_distribution_last_modified_time
}

output "cloudfront_distribution_status" {
  description = "Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system."
  value       = module.simple_website.cloudfront_distribution_status
}

output "cloudfront_distribution_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = module.simple_website.cloudfront_distribution_last_modified_time
}

output "cloudfront_distribution_trusted_signers" {
  description = "List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs."
  value       = module.simple_website.cloudfront_distribution_last_modified_time
}

# resource of cloudfront_function
output "cloudfront_function_arn" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function."
  value       = module.simple_website.cloudfront_function_arn
}

output "cloudfront_function_etag" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function."
  value       = module.simple_website.cloudfront_function_etag
}

output "cloudfront_function_live_stage_etag" {
  description = "ETag hash of any LIVE stage of the function."
  value       = module.simple_website.cloudfront_function_live_stage_etag
}

output "cloudfront_function_status" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED."
  value       = module.simple_website.cloudfront_function_status
}

# resource of aws_cloudfront_monitoring_subscription
output "cloudfront_monitoring_subscription_id" {
  description = "The ID of the CloudFront monitoring subscription, which corresponds to the distribution_id."
  value       = module.simple_website.cloudfront_monitoring_subscription_id
}

# resource of aws_cloudfront_origin_access_control
output "cloudfront_origin_access_control_etag" {
  description = "The current version of this Origin Access Control."
  value       = module.simple_website.cloudfront_origin_access_control_etag
}

output "cloudfront_origin_access_control_id" {
  description = "The unique identifier of this Origin Access Control."
  value       = module.simple_website.cloudfront_origin_access_control_id
}

# resource of route53_record
output "route53_record_web_fqdn" {
  description = "FQDN built using the zone domain and name (web)."
  value       = module.simple_website.route53_record_web_fqdn
}

output "route53_record_web_name" {
  description = "The name of the record (web)."
  value       = module.simple_website.route53_record_web_name
}

# ----------------------------------------------------------------------------
# Output from logging_bucket module
# ----------------------------------------------------------------------------
# resource of aws_s3_bucket
output "s3_bucket_logs_arn" {
  description = "ARN of the bucket (logs)."
  value       = module.simple_website.s3_bucket_logs_arn
}

output "s3_bucket_logs_domain_name" {
  description = "Bucket domain name (logs)."
  value       = module.simple_website.s3_bucket_logs_domain_name
}

output "s3_bucket_logs_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region (logs)."
  value       = module.simple_website.s3_bucket_logs_hosted_zone_id
}

output "s3_bucket_logs_id" {
  description = "Name of the bucket (logs)."
  value       = module.simple_website.s3_bucket_logs_id
}

output "s3_bucket_logs_region" {
  description = "AWS region this bucket resides in (logs)."
  value       = module.simple_website.s3_bucket_logs_region
}

output "s3_bucket_logs_regional_domain_name" {
  description = "The bucket region-specific domain name (logs)."
  value       = module.simple_website.s3_bucket_logs_regional_domain_name
}

output "s3_bucket_logs_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (logs)."
  value       = module.simple_website.s3_bucket_logs_tags_all
}

# resource of aws_s3_bucket_acl
output "s3_bucket_acl_logs_id" {
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,) (logs)."
  value       = module.simple_website.s3_bucket_acl_logs_id
}

# resource of aws_s3_bucket_ownership_controls
output "s3_bucket_ownership_controls_logs_id" {
  description = "S3 Bucket name (logs)."
  value       = module.simple_website.s3_bucket_ownership_controls_logs_id
}

# resource of aws_s3_bucket_public_access_block
output "s3_bucket_public_access_block_logs_id" {
  description = "Name of the S3 bucket the configuration is attached to (logs)."
  value       = module.simple_website.s3_bucket_public_access_block_logs_id
}

# resource of aws_s3_bucket_server_side_encryption_configuration
output "s3_bucket_server_side_encryption_configuration_logs_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (logs)."
  value       = module.simple_website.s3_bucket_server_side_encryption_configuration_logs_id
}

# resource of aws_s3_bucket_versioning
output "s3_bucket_versioning_logs_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (logs)."
  value       = module.simple_website.s3_bucket_versioning_logs_id
}

# ----------------------------------------------------------------------------
# Output from redirection_bucket module
# ----------------------------------------------------------------------------
# resource of aws_s3_bucket
output "s3_bucket_redirection_arn" {
  description = "ARN of the bucket (redirection)."
  value       = module.simple_website.s3_bucket_redirection_arn
}

output "s3_bucket_redirection_domain_name" {
  description = "Bucket domain name (redirection)."
  value       = module.simple_website.s3_bucket_redirection_domain_name
}

output "s3_bucket_redirection_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region (redirection)."
  value       = module.simple_website.s3_bucket_redirection_hosted_zone_id
}

output "s3_bucket_redirection_id" {
  description = "Name of the bucket (redirection)."
  value       = module.simple_website.s3_bucket_redirection_id
}

output "s3_bucket_redirection_region" {
  description = "AWS region this bucket resides in (redirection)."
  value       = module.simple_website.s3_bucket_redirection_region
}

output "s3_bucket_redirection_regional_domain_name" {
  description = "The bucket region-specific domain name (redirection)."
  value       = module.simple_website.s3_bucket_redirection_regional_domain_name
}

output "s3_bucket_redirection_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (redirection)."
  value       = module.simple_website.s3_bucket_redirection_tags_all
}

# resource of aws_s3_bucket_ownership_controls
output "s3_bucket_ownership_controls_redirection_id" {
  description = "S3 Bucket name (redirection)."
  value       = module.simple_website.s3_bucket_ownership_controls_redirection_id
}

# resource of aws_s3_bucket_public_access_block
output "s3_bucket_public_access_block_redirection_id" {
  description = "Name of the S3 bucket the configuration is attached to (redirection)."
  value       = module.simple_website.s3_bucket_public_access_block_redirection_id
}

# ----------------------------------------------------------------------------
# Output from website_bucket module
# ----------------------------------------------------------------------------
# reource of aws_s3_bucket
output "s3_bucket_web_arn" {
  description = "ARN of the bucket (web)."
  value       = module.simple_website.s3_bucket_web_arn
}

output "s3_bucket_web_domain_name" {
  description = "Bucket domain name (web)."
  value       = module.simple_website.s3_bucket_web_domain_name
}

output "s3_bucket_web_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region (web)."
  value       = module.simple_website.s3_bucket_web_hosted_zone_id
}

output "s3_bucket_web_id" {
  description = "Name of the bucket (web)."
  value       = module.simple_website.s3_bucket_web_id
}

output "s3_bucket_web_region" {
  description = "AWS region this bucket resides in (web)."
  value       = module.simple_website.s3_bucket_web_region
}

output "s3_bucket_web_regional_domain_name" {
  description = "The bucket region-specific domain name (web)."
  value       = module.simple_website.s3_bucket_web_regional_domain_name
}

output "s3_bucket_web_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (web)."
  value       = module.simple_website.s3_bucket_web_tags_all
}

# resource of aws_s3_bucket_logging
output "s3_bucket_logging_web_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (web)."
  value       = module.simple_website.s3_bucket_logging_web_id
}

# resource of aws_s3_bucket_ownership_controls
output "s3_bucket_ownership_controls_web_id" {
  description = "S3 Bucket name (web)."
  value       = module.simple_website.s3_bucket_ownership_controls_web_id
}

# resource of aws_s3_bucket_public_access_block
output "s3_bucket_public_access_block_web_id" {
  description = "Name of the S3 bucket the configuration is attached to (web)."
  value       = module.simple_website.s3_bucket_public_access_block_web_id
}

# resource of aws_s3_bucket_server_side_encryption_configuration
output "s3_bucket_server_side_encryption_configuration_web_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (web)."
  value       = module.simple_website.s3_bucket_server_side_encryption_configuration_web_id
}

# resource of aws_s3_bucket_versioning
output "s3_bucket_versioning_web_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (web)."
  value       = module.simple_website.s3_bucket_versioning_web_id
}

# ----------------------------------------------------------------------------
# Output from redirection_cdn_distribution module
# ----------------------------------------------------------------------------
# resource of aws_cloudfront_distribution
output "cloudfront_distribution_arn_redirection" {
  description = "ARN for the distribution (redirection)."
  value       = module.simple_website.cloudfront_distribution_arn_redirection
}

output "cloudfront_distribution_caller_reference_redirection" {
  description = "Internal value used by CloudFront to allow future updates to the distribution configuration (redirection)."
  value       = module.simple_website.cloudfront_distribution_caller_reference_redirection
}

output "cloudfront_distribution_domain_name_redirection" {
  description = "Domain name corresponding to the distribution (redirection)."
  value       = module.simple_website.cloudfront_distribution_domain_name_redirection
}

output "cloudfront_distribution_etag_redirection" {
  description = "Current version of the distribution's information (redirection)."
  value       = module.simple_website.cloudfront_distribution_etag_redirection
}

output "cloudfront_distribution_hosted_zone_id_redirection" {
  description = "CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to (redirection)."
  value       = module.simple_website.cloudfront_distribution_hosted_zone_id_redirection
}

output "cloudfront_distribution_id_redirection" {
  description = "Identifier for the distribution (redirection)."
  value       = module.simple_website.cloudfront_distribution_id_redirection
}

output "cloudfront_distribution_in_progress_validation_batches_redirection" {
  description = "Number of invalidation batches currently in progress (redirection)."
  value       = module.simple_website.cloudfront_distribution_in_progress_validation_batches_redirection
}

output "cloudfront_distribution_last_modified_time_redirection" {
  description = "Date and time the distribution was last modified (redirection)."
  value       = module.simple_website.cloudfront_distribution_last_modified_time_redirection
}

output "cloudfront_distribution_status_redirection" {
  description = "Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system (redirection)."
  value       = module.simple_website.cloudfront_distribution_status_redirection
}

output "cloudfront_distribution_tags_all_redirection" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (redirection)."
  value       = module.simple_website.cloudfront_distribution_tags_all_redirection
}

output "cloudfront_distribution_trusted_signers_redirection" {
  description = "List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs (redirection)."
  value       = module.simple_website.cloudfront_distribution_trusted_signers_redirection
}

# resource of aws_cloudfront_function
output "cloudfront_function_arn_redirection" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function (redirection)."
  value       = module.simple_website.cloudfront_function_arn_redirection
}

output "cloudfront_function_etag_redirection" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function (redirection)."
  value       = module.simple_website.cloudfront_function_etag_redirection
}

output "cloudfront_function_live_stage_etag_redirection" {
  description = "ETag hash of any LIVE stage of the function."
  value       = module.simple_website.cloudfront_function_live_stage_etag_redirection
}

output "cloudfront_function_status_redirection" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED (redirection)."
  value       = module.simple_website.cloudfront_function_status_redirection
}

# resource of aws_cloudfront_monitoring_subscription
output "cloudfront_monitoring_subscription_id_redirection" {
  description = "The ID of the CloudFront monitoring subscription, which corresponds to the distribution_id (redirection)."
  value       = module.simple_website.cloudfront_monitoring_subscription_id_redirection
}

# resource of aws_cloudfront_origin_access_control
output "cloudfront_origin_access_control_etag_redirection" {
  description = "The current version of this Origin Access Control (redirection)."
  value       = module.simple_website.cloudfront_origin_access_control_etag_redirection
}

output "cloudfront_origin_access_control_id_redirection" {
  description = "The unique identifier of this Origin Access Control (redirection)."
  value       = module.simple_website.cloudfront_origin_access_control_id_redirection
}

# resource of route53_record
output "route53_record_fqdn_redirection" {
  description = "FQDN built using the zone domain and name (redirection)."
  value       = module.simple_website.route53_record_fqdn_redirection
}

output "route53_record_name_redirection" {
  description = "The name of the record (redirection)."
  value       = module.simple_website.route53_record_name_redirection
}
