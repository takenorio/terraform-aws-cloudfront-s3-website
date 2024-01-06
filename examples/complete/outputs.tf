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

output "acm_certificate_validation_id" {
  description = "Time at which the certificate was issued"
  value       = module.simple_website.acm_certificate_validation_id
}

# resource of route53_record
output "route53_record_fqdn_certificate" {
  description = "FQDN built using the zone domain and name (certificate)."
  value       = module.simple_website.route53_record_fqdn_certificate
}

output "route53_record_name_certificate" {
  description = "The name of the record (certificate)."
  value       = module.simple_website.route53_record_name_certificate
}

# ----------------------------------------------------------------------------
# Output from logging_bucket module
# ----------------------------------------------------------------------------
# resource of aws_s3_bucket
output "s3_bucket_arn_logging" {
  description = "ARN of the bucket (logging)."
  value       = module.simple_website.s3_bucket_arn_logging
}

output "s3_bucket_domain_name_logging" {
  description = "Bucket domain name (logging)."
  value       = module.simple_website.s3_bucket_domain_name_logging
}

output "s3_bucket_hosted_zone_id_logging" {
  description = "Route 53 Hosted Zone ID for this bucket's region (logging)."
  value       = module.simple_website.s3_bucket_hosted_zone_id_logging
}

output "s3_bucket_id_logging" {
  description = "Name of the bucket (logging)."
  value       = module.simple_website.s3_bucket_id_logging
}

output "s3_bucket_region_logging" {
  description = "AWS region this bucket resides in (logging)."
  value       = module.simple_website.s3_bucket_region_logging
}

output "s3_bucket_regional_domain_name_logging" {
  description = "The bucket region-specific domain name (logging)."
  value       = module.simple_website.s3_bucket_regional_domain_name_logging
}

output "s3_bucket_tags_all_logging" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (logging)."
  value       = module.simple_website.s3_bucket_tags_all_logging
}

# resource of aws_s3_bucket_acl
output "s3_bucket_acl_id_logging" {
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,) (logging)."
  value       = module.simple_website.s3_bucket_acl_id_logging
}

# resource of aws_s3_bucket_ownership_controls
output "s3_bucket_ownership_controls_id_logging" {
  description = "S3 Bucket name (logging)."
  value       = module.simple_website.s3_bucket_ownership_controls_id_logging
}

# resource of aws_s3_bucket_public_access_block
output "s3_bucket_public_access_block_id_logging" {
  description = "Name of the S3 bucket the configuration is attached to (logging)."
  value       = module.simple_website.s3_bucket_public_access_block_id_logging
}

# resource of aws_s3_bucket_server_side_encryption_configuration
output "s3_bucket_server_side_encryption_configuration_id_logging" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (logging)."
  value       = module.simple_website.s3_bucket_server_side_encryption_configuration_id_logging
}

# resource of aws_s3_bucket_versioning
output "s3_bucket_versioning_id_logging" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (logging)."
  value       = module.simple_website.s3_bucket_versioning_id_logging
}

# ----------------------------------------------------------------------------
# Output from redirection_bucket module
# ----------------------------------------------------------------------------
# resource of aws_s3_bucket
output "s3_bucket_arn_redirection" {
  description = "ARN of the bucket (redirection)."
  value       = module.simple_website.s3_bucket_arn_redirection
}

output "s3_bucket_domain_name_redirection" {
  description = "Bucket domain name (redirection)."
  value       = module.simple_website.s3_bucket_domain_name_redirection
}

output "s3_bucket_hosted_zone_id_redirection" {
  description = "Route 53 Hosted Zone ID for this bucket's region (redirection)."
  value       = module.simple_website.s3_bucket_hosted_zone_id_redirection
}

output "s3_bucket_id_redirection" {
  description = "Name of the bucket (redirection)."
  value       = module.simple_website.s3_bucket_id_redirection
}

output "s3_bucket_region_redirection" {
  description = "AWS region this bucket resides in (redirection)."
  value       = module.simple_website.s3_bucket_region_redirection
}

output "s3_bucket_regional_domain_name_redirection" {
  description = "The bucket region-specific domain name (redirection)."
  value       = module.simple_website.s3_bucket_regional_domain_name_redirection
}

output "s3_bucket_tags_all_redirection" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (redirection)."
  value       = module.simple_website.s3_bucket_tags_all_redirection
}

# resource of aws_s3_bucket_ownership_controls
output "s3_bucket_ownership_controls_id_redirection" {
  description = "S3 Bucket name (redirection)."
  value       = module.simple_website.s3_bucket_ownership_controls_id_redirection
}

# resource of aws_s3_bucket_public_access_block
output "s3_bucket_public_access_block_id_redirection" {
  description = "Name of the S3 bucket the configuration is attached to (redirection)."
  value       = module.simple_website.s3_bucket_public_access_block_id_redirection
}

# ----------------------------------------------------------------------------
# Output from website_bucket module
# ----------------------------------------------------------------------------
# resource of aws_s3_bucket
output "s3_bucket_arn_website" {
  description = "ARN of the bucket (website)."
  value       = module.simple_website.s3_bucket_arn_website
}

output "s3_bucket_domain_name_website" {
  description = "Bucket domain name (website)."
  value       = module.simple_website.s3_bucket_domain_name_website
}

output "s3_bucket_hosted_zone_id_website" {
  description = "Route 53 Hosted Zone ID for this bucket's region (website)."
  value       = module.simple_website.s3_bucket_hosted_zone_id_website
}

output "s3_bucket_id_website" {
  description = "Name of the bucket (website)."
  value       = module.simple_website.s3_bucket_id_website
}

output "s3_bucket_region_website" {
  description = "AWS region this bucket resides in (website)."
  value       = module.simple_website.s3_bucket_region_website
}

output "s3_bucket_regional_domain_name_website" {
  description = "The bucket region-specific domain name (website)."
  value       = module.simple_website.s3_bucket_regional_domain_name_website
}

output "s3_bucket_tags_all_website" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (website)."
  value       = module.simple_website.s3_bucket_tags_all_website
}

# resource of aws_s3_bucket_logging
output "s3_bucket_logging_id_website" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (website)."
  value       = module.simple_website.s3_bucket_logging_id_website
}

# resource of aws_s3_bucket_ownership_controls
output "s3_bucket_ownership_controls_id_website" {
  description = "S3 Bucket name (website)."
  value       = module.simple_website.s3_bucket_ownership_controls_id_website
}

# resource of aws_s3_bucket_public_access_block
output "s3_bucket_public_access_block_id_website" {
  description = "Name of the S3 bucket the configuration is attached to (website)."
  value       = module.simple_website.s3_bucket_public_access_block_id_website
}

# resource of aws_s3_bucket_server_side_encryption_configuration
output "s3_bucket_server_side_encryption_configuration_id_website" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (website)."
  value       = module.simple_website.s3_bucket_server_side_encryption_configuration_id_website
}

# resource of aws_s3_bucket_versioning
output "s3_bucket_versioning_id_website" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided (website)."
  value       = module.simple_website.s3_bucket_versioning_id_website
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

# ----------------------------------------------------------------------------
# Output from website_cdn_distribution module
# ----------------------------------------------------------------------------
# resource of aws_cloudfront_distribution
output "cloudfront_distribution_arn_website" {
  description = "ARN for the distribution (website)."
  value       = module.simple_website.cloudfront_distribution_arn_website
}

output "cloudfront_distribution_caller_reference_website" {
  description = "Internal value used by CloudFront to allow future updates to the distribution configuration (website)."
  value       = module.simple_website.cloudfront_distribution_caller_reference_website
}

output "cloudfront_distribution_domain_name_website" {
  description = "Domain name corresponding to the distribution (website)."
  value       = module.simple_website.cloudfront_distribution_domain_name_website
}

output "cloudfront_distribution_etag_website" {
  description = "Current version of the distribution's information (website)."
  value       = module.simple_website.cloudfront_distribution_etag_website
}

output "cloudfront_distribution_hosted_zone_id_website" {
  description = "CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to (website)."
  value       = module.simple_website.cloudfront_distribution_hosted_zone_id_website
}

output "cloudfront_distribution_id_website" {
  description = "Identifier for the distribution (website)."
  value       = module.simple_website.cloudfront_distribution_id_website
}

output "cloudfront_distribution_in_progress_validation_batches_website" {
  description = "Number of invalidation batches currently in progress (website)."
  value       = module.simple_website.cloudfront_distribution_in_progress_validation_batches_website
}

output "cloudfront_distribution_last_modified_time_website" {
  description = "Date and time the distribution was last modified (website)."
  value       = module.simple_website.cloudfront_distribution_last_modified_time_website
}

output "cloudfront_distribution_status_website" {
  description = "Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system (website)."
  value       = module.simple_website.cloudfront_distribution_status_website
}

output "cloudfront_distribution_tags_all_website" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block (website)."
  value       = module.simple_website.cloudfront_distribution_tags_all_website
}

output "cloudfront_distribution_trusted_signers_website" {
  description = "List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs (website)."
  value       = module.simple_website.cloudfront_distribution_trusted_signers_website
}

# resource of aws_cloudfront_function
output "cloudfront_function_arn_website" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function (website)."
  value       = module.simple_website.cloudfront_function_arn_website
}

output "cloudfront_function_etag_website" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function (website)."
  value       = module.simple_website.cloudfront_function_etag_website
}

output "cloudfront_function_live_stage_etag_website" {
  description = "ETag hash of any LIVE stage of the function (website)."
  value       = module.simple_website.cloudfront_function_live_stage_etag_website
}

output "cloudfront_function_status_website" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED (website)."
  value       = module.simple_website.cloudfront_function_status_website
}

# resource of aws_cloudfront_monitoring_subscription
output "cloudfront_monitoring_subscription_id_website" {
  description = "The ID of the CloudFront monitoring subscription, which corresponds to the distribution_id (website)."
  value       = module.simple_website.cloudfront_monitoring_subscription_id_website
}

# resource of aws_cloudfront_origin_access_control
output "cloudfront_origin_access_control_etag_website" {
  description = "The current version of this Origin Access Control (website)."
  value       = module.simple_website.cloudfront_origin_access_control_etag_website
}

output "cloudfront_origin_access_control_id_website" {
  description = "The unique identifier of this Origin Access Control (website)."
  value       = module.simple_website.cloudfront_origin_access_control_id_website
}

# resource of route53_record
output "route53_record_fqdn_website" {
  description = "FQDN built using the zone domain and name (website)."
  value       = module.simple_website.route53_record_fqdn_website
}

output "route53_record_name_website" {
  description = "The name of the record (website)."
  value       = module.simple_website.route53_record_name_website
}
