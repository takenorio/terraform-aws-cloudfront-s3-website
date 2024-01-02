output "cloudfront_distribution_arn" {
  description = "ARN for the distribution."
  value       = aws_cloudfront_distribution.redirection.arn
}

output "cloudfront_distribution_caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the distribution configuration."
  value       = aws_cloudfront_distribution.redirection.caller_reference
}

output "cloudfront_distribution_domain_name" {
  description = "Domain name corresponding to the distribution."
  value       = aws_cloudfront_distribution.redirection.domain_name
}

output "cloudfront_distribution_etag" {
  description = "Current version of the distribution's information."
  value       = aws_cloudfront_distribution.redirection.etag
}

output "cloudfront_distribution_hosted_zone_id" {
  description = "CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to."
  value       = aws_cloudfront_distribution.redirection.hosted_zone_id
}

output "cloudfront_distribution_id" {
  description = "Identifier for the distribution."
  value       = aws_cloudfront_distribution.redirection.id
}

output "cloudfront_distribution_in_progress_validation_batches" {
  description = "Number of invalidation batches currently in progress."
  value       = aws_cloudfront_distribution.redirection.in_progress_validation_batches
}

output "cloudfront_distribution_last_modified_time" {
  description = "Date and time the distribution was last modified."
  value       = aws_cloudfront_distribution.redirection.last_modified_time
}

output "cloudfront_distribution_status" {
  description = "Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system."
  value       = aws_cloudfront_distribution.redirection.status
}

output "cloudfront_distribution_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudfront_distribution.redirection.last_modified_time
}

output "cloudfront_distribution_trusted_signers" {
  description = "List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs."
  value       = aws_cloudfront_distribution.redirection.last_modified_time
}

output "cloudfront_function_arn" {
  description = "Amazon Resource Name (ARN) identifying your CloudFront Function."
  value       = aws_cloudfront_function.redirection.arn
}

output "cloudfront_function_etag" {
  description = "ETag hash of the function. This is the value for the DEVELOPMENT stage of the function."
  value       = aws_cloudfront_function.redirection.etag
}

output "cloudfront_function_live_stage_etag" {
  description = "ETag hash of any LIVE stage of the function."
  value       = aws_cloudfront_function.redirection.live_stage_etag
}

output "cloudfront_function_status" {
  description = "Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED."
  value       = aws_cloudfront_function.redirection.status
}

output "cloudfront_monitoring_subscription_id" {
  description = "The ID of the CloudFront monitoring subscription, which corresponds to the distribution_id."
  value       = aws_cloudfront_monitoring_subscription.redirection.id
}

output "cloudfront_origin_access_control_etag" {
  description = "The current version of this Origin Access Control."
  value       = aws_cloudfront_origin_access_control.redirection.etag
}

output "cloudfront_origin_access_control_id" {
  description = "The unique identifier of this Origin Access Control."
  value       = aws_cloudfront_origin_access_control.redirection.id
}

output "route53_record_fqdn" {
  description = "FQDN built using the zone domain and name."
  value       = "aws_route53_record.redirection[www.${var.domain_name}].fqdn"
}

output "route53_record_name" {
  description = "The name of the record."
  value       = "aws_route53_record.redirection[www.${var.domain_name}].name"
}
