# AWS simple website Terraform module

## Overview

This Terraform module efficiently deploys a static website using AWS infrastructure, ideal for straightforward and quick website setups. It assumes that your domain is managed with Amazon Route 53, which simplifies DNS and domain configuration.

## Prerequisites

Domain managed by AWS Route 53.

## Usage

```terraform
module "cloudfront_s3_website" {
  source              = "takenorio/cloudfront-s3-website/aws"
  domain_name         = "example.com"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.6.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.31.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_domain_certificate"></a> [domain\_certificate](#module\_domain\_certificate) | ./modules/domain-certificate | n/a |
| <a name="module_logging_bucket"></a> [logging\_bucket](#module\_logging\_bucket) | ./modules/logging-bucket | n/a |
| <a name="module_redirection_bucket"></a> [redirection\_bucket](#module\_redirection\_bucket) | ./modules/redirection-bucket | n/a |
| <a name="module_redirection_cdn_distribution"></a> [redirection\_cdn\_distribution](#module\_redirection\_cdn\_distribution) | ./modules/redirection-cdn-distribution | n/a |
| <a name="module_website_bucket"></a> [website\_bucket](#module\_website\_bucket) | ./modules/website-bucket | n/a |
| <a name="module_website_cdn_distribution"></a> [website\_cdn\_distribution](#module\_website\_cdn\_distribution) | ./modules/website-cdn-distribution | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to be managed by Route53. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arn"></a> [acm\_certificate\_arn](#output\_acm\_certificate\_arn) | ARN of the certificate. |
| <a name="output_acm_certificate_domain_name"></a> [acm\_certificate\_domain\_name](#output\_acm\_certificate\_domain\_name) | ARN of the certificate. |
| <a name="output_acm_certificate_domain_validation_options"></a> [acm\_certificate\_domain\_validation\_options](#output\_acm\_certificate\_domain\_validation\_options) | Set of domain validation objects which can be used to complete certificate validation. |
| <a name="output_acm_certificate_not_after"></a> [acm\_certificate\_not\_after](#output\_acm\_certificate\_not\_after) | Expiration date and time of the certificate. |
| <a name="output_acm_certificate_not_before"></a> [acm\_certificate\_not\_before](#output\_acm\_certificate\_not\_before) | Start of the validity period of the certificate. |
| <a name="output_acm_certificate_pending_renewal"></a> [acm\_certificate\_pending\_renewal](#output\_acm\_certificate\_pending\_renewal) | true if a Private certificate eligible for managed renewal is within the early\_renewal\_duration period. |
| <a name="output_acm_certificate_renewal_eligibility"></a> [acm\_certificate\_renewal\_eligibility](#output\_acm\_certificate\_renewal\_eligibility) | Whether the certificate is eligible for managed renewal. |
| <a name="output_acm_certificate_renewal_summary"></a> [acm\_certificate\_renewal\_summary](#output\_acm\_certificate\_renewal\_summary) | Contains information about the status of ACM's managed renewal for the certificate. |
| <a name="output_acm_certificate_status"></a> [acm\_certificate\_status](#output\_acm\_certificate\_status) | Status of the certificate. |
| <a name="output_acm_certificate_tags_all"></a> [acm\_certificate\_tags\_all](#output\_acm\_certificate\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
| <a name="output_acm_certificate_type"></a> [acm\_certificate\_type](#output\_acm\_certificate\_type) | Source of the certificate. |
| <a name="output_acm_certificate_validation_id"></a> [acm\_certificate\_validation\_id](#output\_acm\_certificate\_validation\_id) | Time at which the certificate was issued |
| <a name="output_cloudfront_distribution_arn_redirection"></a> [cloudfront\_distribution\_arn\_redirection](#output\_cloudfront\_distribution\_arn\_redirection) | ARN for the distribution (redirection). |
| <a name="output_cloudfront_distribution_arn_website"></a> [cloudfront\_distribution\_arn\_website](#output\_cloudfront\_distribution\_arn\_website) | ARN for the distribution (website). |
| <a name="output_cloudfront_distribution_caller_reference_redirection"></a> [cloudfront\_distribution\_caller\_reference\_redirection](#output\_cloudfront\_distribution\_caller\_reference\_redirection) | Internal value used by CloudFront to allow future updates to the distribution configuration (redirection). |
| <a name="output_cloudfront_distribution_caller_reference_website"></a> [cloudfront\_distribution\_caller\_reference\_website](#output\_cloudfront\_distribution\_caller\_reference\_website) | Internal value used by CloudFront to allow future updates to the distribution configuration (website). |
| <a name="output_cloudfront_distribution_domain_name_redirection"></a> [cloudfront\_distribution\_domain\_name\_redirection](#output\_cloudfront\_distribution\_domain\_name\_redirection) | Domain name corresponding to the distribution (redirection). |
| <a name="output_cloudfront_distribution_domain_name_website"></a> [cloudfront\_distribution\_domain\_name\_website](#output\_cloudfront\_distribution\_domain\_name\_website) | Domain name corresponding to the distribution (website). |
| <a name="output_cloudfront_distribution_etag_redirection"></a> [cloudfront\_distribution\_etag\_redirection](#output\_cloudfront\_distribution\_etag\_redirection) | Current version of the distribution's information (redirection). |
| <a name="output_cloudfront_distribution_etag_website"></a> [cloudfront\_distribution\_etag\_website](#output\_cloudfront\_distribution\_etag\_website) | Current version of the distribution's information (website). |
| <a name="output_cloudfront_distribution_hosted_zone_id_redirection"></a> [cloudfront\_distribution\_hosted\_zone\_id\_redirection](#output\_cloudfront\_distribution\_hosted\_zone\_id\_redirection) | CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to (redirection). |
| <a name="output_cloudfront_distribution_hosted_zone_id_website"></a> [cloudfront\_distribution\_hosted\_zone\_id\_website](#output\_cloudfront\_distribution\_hosted\_zone\_id\_website) | CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to (website). |
| <a name="output_cloudfront_distribution_id_redirection"></a> [cloudfront\_distribution\_id\_redirection](#output\_cloudfront\_distribution\_id\_redirection) | Identifier for the distribution (redirection). |
| <a name="output_cloudfront_distribution_id_website"></a> [cloudfront\_distribution\_id\_website](#output\_cloudfront\_distribution\_id\_website) | Identifier for the distribution (website). |
| <a name="output_cloudfront_distribution_in_progress_validation_batches_redirection"></a> [cloudfront\_distribution\_in\_progress\_validation\_batches\_redirection](#output\_cloudfront\_distribution\_in\_progress\_validation\_batches\_redirection) | Number of invalidation batches currently in progress (redirection). |
| <a name="output_cloudfront_distribution_in_progress_validation_batches_website"></a> [cloudfront\_distribution\_in\_progress\_validation\_batches\_website](#output\_cloudfront\_distribution\_in\_progress\_validation\_batches\_website) | Number of invalidation batches currently in progress (website). |
| <a name="output_cloudfront_distribution_last_modified_time_redirection"></a> [cloudfront\_distribution\_last\_modified\_time\_redirection](#output\_cloudfront\_distribution\_last\_modified\_time\_redirection) | Date and time the distribution was last modified (redirection). |
| <a name="output_cloudfront_distribution_last_modified_time_website"></a> [cloudfront\_distribution\_last\_modified\_time\_website](#output\_cloudfront\_distribution\_last\_modified\_time\_website) | Date and time the distribution was last modified (website). |
| <a name="output_cloudfront_distribution_status_redirection"></a> [cloudfront\_distribution\_status\_redirection](#output\_cloudfront\_distribution\_status\_redirection) | Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system (redirection). |
| <a name="output_cloudfront_distribution_status_website"></a> [cloudfront\_distribution\_status\_website](#output\_cloudfront\_distribution\_status\_website) | Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system (website). |
| <a name="output_cloudfront_distribution_tags_all_redirection"></a> [cloudfront\_distribution\_tags\_all\_redirection](#output\_cloudfront\_distribution\_tags\_all\_redirection) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block (redirection). |
| <a name="output_cloudfront_distribution_tags_all_website"></a> [cloudfront\_distribution\_tags\_all\_website](#output\_cloudfront\_distribution\_tags\_all\_website) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block (website). |
| <a name="output_cloudfront_distribution_trusted_signers_redirection"></a> [cloudfront\_distribution\_trusted\_signers\_redirection](#output\_cloudfront\_distribution\_trusted\_signers\_redirection) | List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs (redirection). |
| <a name="output_cloudfront_distribution_trusted_signers_website"></a> [cloudfront\_distribution\_trusted\_signers\_website](#output\_cloudfront\_distribution\_trusted\_signers\_website) | List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs (website). |
| <a name="output_cloudfront_function_arn_redirection"></a> [cloudfront\_function\_arn\_redirection](#output\_cloudfront\_function\_arn\_redirection) | Amazon Resource Name (ARN) identifying your CloudFront Function (redirection). |
| <a name="output_cloudfront_function_arn_website"></a> [cloudfront\_function\_arn\_website](#output\_cloudfront\_function\_arn\_website) | Amazon Resource Name (ARN) identifying your CloudFront Function (website). |
| <a name="output_cloudfront_function_etag_redirection"></a> [cloudfront\_function\_etag\_redirection](#output\_cloudfront\_function\_etag\_redirection) | ETag hash of the function. This is the value for the DEVELOPMENT stage of the function (redirection). |
| <a name="output_cloudfront_function_etag_website"></a> [cloudfront\_function\_etag\_website](#output\_cloudfront\_function\_etag\_website) | ETag hash of the function. This is the value for the DEVELOPMENT stage of the function (website). |
| <a name="output_cloudfront_function_live_stage_etag_redirection"></a> [cloudfront\_function\_live\_stage\_etag\_redirection](#output\_cloudfront\_function\_live\_stage\_etag\_redirection) | ETag hash of any LIVE stage of the function. |
| <a name="output_cloudfront_function_live_stage_etag_website"></a> [cloudfront\_function\_live\_stage\_etag\_website](#output\_cloudfront\_function\_live\_stage\_etag\_website) | ETag hash of any LIVE stage of the function (website). |
| <a name="output_cloudfront_function_status_redirection"></a> [cloudfront\_function\_status\_redirection](#output\_cloudfront\_function\_status\_redirection) | Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED (redirection). |
| <a name="output_cloudfront_function_status_website"></a> [cloudfront\_function\_status\_website](#output\_cloudfront\_function\_status\_website) | Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED (website). |
| <a name="output_cloudfront_monitoring_subscription_id_redirection"></a> [cloudfront\_monitoring\_subscription\_id\_redirection](#output\_cloudfront\_monitoring\_subscription\_id\_redirection) | The ID of the CloudFront monitoring subscription, which corresponds to the distribution\_id (redirection). |
| <a name="output_cloudfront_monitoring_subscription_id_website"></a> [cloudfront\_monitoring\_subscription\_id\_website](#output\_cloudfront\_monitoring\_subscription\_id\_website) | The ID of the CloudFront monitoring subscription, which corresponds to the distribution\_id (website). |
| <a name="output_cloudfront_origin_access_control_etag_redirection"></a> [cloudfront\_origin\_access\_control\_etag\_redirection](#output\_cloudfront\_origin\_access\_control\_etag\_redirection) | The current version of this Origin Access Control (redirection). |
| <a name="output_cloudfront_origin_access_control_etag_website"></a> [cloudfront\_origin\_access\_control\_etag\_website](#output\_cloudfront\_origin\_access\_control\_etag\_website) | The current version of this Origin Access Control (website). |
| <a name="output_cloudfront_origin_access_control_id_redirection"></a> [cloudfront\_origin\_access\_control\_id\_redirection](#output\_cloudfront\_origin\_access\_control\_id\_redirection) | The unique identifier of this Origin Access Control (redirection). |
| <a name="output_cloudfront_origin_access_control_id_website"></a> [cloudfront\_origin\_access\_control\_id\_website](#output\_cloudfront\_origin\_access\_control\_id\_website) | The unique identifier of this Origin Access Control (website). |
| <a name="output_route53_record_fqdn_certificate"></a> [route53\_record\_fqdn\_certificate](#output\_route53\_record\_fqdn\_certificate) | FQDN built using the zone domain and name (certificate). |
| <a name="output_route53_record_fqdn_redirection"></a> [route53\_record\_fqdn\_redirection](#output\_route53\_record\_fqdn\_redirection) | FQDN built using the zone domain and name (redirection). |
| <a name="output_route53_record_fqdn_website"></a> [route53\_record\_fqdn\_website](#output\_route53\_record\_fqdn\_website) | FQDN built using the zone domain and name (website). |
| <a name="output_route53_record_name_certificate"></a> [route53\_record\_name\_certificate](#output\_route53\_record\_name\_certificate) | The name of the record (certificate). |
| <a name="output_route53_record_name_redirection"></a> [route53\_record\_name\_redirection](#output\_route53\_record\_name\_redirection) | The name of the record (redirection). |
| <a name="output_route53_record_name_website"></a> [route53\_record\_name\_website](#output\_route53\_record\_name\_website) | The name of the record (website). |
| <a name="output_s3_bucket_acl_id_logging"></a> [s3\_bucket\_acl\_id\_logging](#output\_s3\_bucket\_acl\_id\_logging) | The bucket, expected\_bucket\_owner (if configured), and acl (if configured) separated by commas (,) (logging). |
| <a name="output_s3_bucket_arn_logging"></a> [s3\_bucket\_arn\_logging](#output\_s3\_bucket\_arn\_logging) | ARN of the bucket (logging). |
| <a name="output_s3_bucket_arn_redirection"></a> [s3\_bucket\_arn\_redirection](#output\_s3\_bucket\_arn\_redirection) | ARN of the bucket (redirection). |
| <a name="output_s3_bucket_arn_website"></a> [s3\_bucket\_arn\_website](#output\_s3\_bucket\_arn\_website) | ARN of the bucket (website). |
| <a name="output_s3_bucket_domain_name_logging"></a> [s3\_bucket\_domain\_name\_logging](#output\_s3\_bucket\_domain\_name\_logging) | Bucket domain name (logging). |
| <a name="output_s3_bucket_domain_name_redirection"></a> [s3\_bucket\_domain\_name\_redirection](#output\_s3\_bucket\_domain\_name\_redirection) | Bucket domain name (redirection). |
| <a name="output_s3_bucket_domain_name_website"></a> [s3\_bucket\_domain\_name\_website](#output\_s3\_bucket\_domain\_name\_website) | Bucket domain name (website). |
| <a name="output_s3_bucket_hosted_zone_id_logging"></a> [s3\_bucket\_hosted\_zone\_id\_logging](#output\_s3\_bucket\_hosted\_zone\_id\_logging) | Route 53 Hosted Zone ID for this bucket's region (logging). |
| <a name="output_s3_bucket_hosted_zone_id_redirection"></a> [s3\_bucket\_hosted\_zone\_id\_redirection](#output\_s3\_bucket\_hosted\_zone\_id\_redirection) | Route 53 Hosted Zone ID for this bucket's region (redirection). |
| <a name="output_s3_bucket_hosted_zone_id_website"></a> [s3\_bucket\_hosted\_zone\_id\_website](#output\_s3\_bucket\_hosted\_zone\_id\_website) | Route 53 Hosted Zone ID for this bucket's region (website). |
| <a name="output_s3_bucket_id_logging"></a> [s3\_bucket\_id\_logging](#output\_s3\_bucket\_id\_logging) | Name of the bucket (logging). |
| <a name="output_s3_bucket_id_redirection"></a> [s3\_bucket\_id\_redirection](#output\_s3\_bucket\_id\_redirection) | Name of the bucket (redirection). |
| <a name="output_s3_bucket_id_website"></a> [s3\_bucket\_id\_website](#output\_s3\_bucket\_id\_website) | Name of the bucket (website). |
| <a name="output_s3_bucket_logging_id_website"></a> [s3\_bucket\_logging\_id\_website](#output\_s3\_bucket\_logging\_id\_website) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (website). |
| <a name="output_s3_bucket_ownership_controls_id_logging"></a> [s3\_bucket\_ownership\_controls\_id\_logging](#output\_s3\_bucket\_ownership\_controls\_id\_logging) | S3 Bucket name (logging). |
| <a name="output_s3_bucket_ownership_controls_id_redirection"></a> [s3\_bucket\_ownership\_controls\_id\_redirection](#output\_s3\_bucket\_ownership\_controls\_id\_redirection) | S3 Bucket name (redirection). |
| <a name="output_s3_bucket_ownership_controls_id_website"></a> [s3\_bucket\_ownership\_controls\_id\_website](#output\_s3\_bucket\_ownership\_controls\_id\_website) | S3 Bucket name (website). |
| <a name="output_s3_bucket_public_access_block_id_logging"></a> [s3\_bucket\_public\_access\_block\_id\_logging](#output\_s3\_bucket\_public\_access\_block\_id\_logging) | Name of the S3 bucket the configuration is attached to (logging). |
| <a name="output_s3_bucket_public_access_block_id_redirection"></a> [s3\_bucket\_public\_access\_block\_id\_redirection](#output\_s3\_bucket\_public\_access\_block\_id\_redirection) | Name of the S3 bucket the configuration is attached to (redirection). |
| <a name="output_s3_bucket_public_access_block_id_website"></a> [s3\_bucket\_public\_access\_block\_id\_website](#output\_s3\_bucket\_public\_access\_block\_id\_website) | Name of the S3 bucket the configuration is attached to (website). |
| <a name="output_s3_bucket_region_logging"></a> [s3\_bucket\_region\_logging](#output\_s3\_bucket\_region\_logging) | AWS region this bucket resides in (logging). |
| <a name="output_s3_bucket_region_redirection"></a> [s3\_bucket\_region\_redirection](#output\_s3\_bucket\_region\_redirection) | AWS region this bucket resides in (redirection). |
| <a name="output_s3_bucket_region_website"></a> [s3\_bucket\_region\_website](#output\_s3\_bucket\_region\_website) | AWS region this bucket resides in (website). |
| <a name="output_s3_bucket_regional_domain_name_logging"></a> [s3\_bucket\_regional\_domain\_name\_logging](#output\_s3\_bucket\_regional\_domain\_name\_logging) | The bucket region-specific domain name (logging). |
| <a name="output_s3_bucket_regional_domain_name_redirection"></a> [s3\_bucket\_regional\_domain\_name\_redirection](#output\_s3\_bucket\_regional\_domain\_name\_redirection) | The bucket region-specific domain name (redirection). |
| <a name="output_s3_bucket_regional_domain_name_website"></a> [s3\_bucket\_regional\_domain\_name\_website](#output\_s3\_bucket\_regional\_domain\_name\_website) | The bucket region-specific domain name (website). |
| <a name="output_s3_bucket_server_side_encryption_configuration_id_logging"></a> [s3\_bucket\_server\_side\_encryption\_configuration\_id\_logging](#output\_s3\_bucket\_server\_side\_encryption\_configuration\_id\_logging) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (logging). |
| <a name="output_s3_bucket_server_side_encryption_configuration_id_website"></a> [s3\_bucket\_server\_side\_encryption\_configuration\_id\_website](#output\_s3\_bucket\_server\_side\_encryption\_configuration\_id\_website) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (website). |
| <a name="output_s3_bucket_tags_all_logging"></a> [s3\_bucket\_tags\_all\_logging](#output\_s3\_bucket\_tags\_all\_logging) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block (logging). |
| <a name="output_s3_bucket_tags_all_redirection"></a> [s3\_bucket\_tags\_all\_redirection](#output\_s3\_bucket\_tags\_all\_redirection) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block (redirection). |
| <a name="output_s3_bucket_tags_all_website"></a> [s3\_bucket\_tags\_all\_website](#output\_s3\_bucket\_tags\_all\_website) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block (website). |
| <a name="output_s3_bucket_versioning_id_logging"></a> [s3\_bucket\_versioning\_id\_logging](#output\_s3\_bucket\_versioning\_id\_logging) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (logging). |
| <a name="output_s3_bucket_versioning_id_website"></a> [s3\_bucket\_versioning\_id\_website](#output\_s3\_bucket\_versioning\_id\_website) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (website). |
<!-- END_TF_DOCS -->
