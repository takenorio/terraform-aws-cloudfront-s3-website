output "s3_bucket_arn" {
  description = "ARN of the bucket."
  value       = aws_s3_bucket.logging.arn
}

output "s3_bucket_domain_name" {
  description = "Bucket domain name."
  value       = aws_s3_bucket.logging.bucket_domain_name
}

output "s3_bucket_hosted_zone_id" {
  description = "Route 53 Hosted Zone ID for this bucket's region."
  value       = aws_s3_bucket.logging.hosted_zone_id
}

output "s3_bucket_id" {
  description = "Name of the bucket."
  value       = aws_s3_bucket.logging.id
}

output "s3_bucket_region" {
  description = "AWS region this bucket resides in."
  value       = aws_s3_bucket.logging.region
}

output "s3_bucket_regional_domain_name" {
  description = "The bucket region-specific domain name."
  value       = aws_s3_bucket.logging.bucket_regional_domain_name
}

output "s3_bucket_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_bucket.logging.tags_all
}

output "s3_bucket_acl_id" {
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,)."
  value       = aws_s3_bucket_acl.logging.id
}

output "s3_bucket_ownership_controls_id" {
  description = "S3 Bucket name."
  value       = aws_s3_bucket_ownership_controls.logging.id
}

output "s3_bucket_public_access_block_id" {
  description = "Name of the S3 bucket the configuration is attached to."
  value       = aws_s3_bucket_public_access_block.logging.id
}

output "s3_bucket_server_side_encryption_configuration_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_server_side_encryption_configuration.logging.id
}

output "s3_bucket_versioning_id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_versioning.logging.id
}
