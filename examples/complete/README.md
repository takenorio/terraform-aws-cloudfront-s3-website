<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_simple_website"></a> [simple\_website](#module\_simple\_website) | ../../ | n/a |

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
| <a name="output_acm_certificate_domain_validation_options"></a> [acm\_certificate\_domain\_validation\_options](#output\_acm\_certificate\_domain\_validation\_options) | Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined. Only set if DNS-validation was used. |
| <a name="output_acm_certificate_not_after"></a> [acm\_certificate\_not\_after](#output\_acm\_certificate\_not\_after) | Expiration date and time of the certificate. |
| <a name="output_acm_certificate_not_before"></a> [acm\_certificate\_not\_before](#output\_acm\_certificate\_not\_before) | Start of the validity period of the certificate. |
| <a name="output_acm_certificate_pending_renewal"></a> [acm\_certificate\_pending\_renewal](#output\_acm\_certificate\_pending\_renewal) | true if a Private certificate eligible for managed renewal is within the early\_renewal\_duration period. |
| <a name="output_acm_certificate_renewal_eligibility"></a> [acm\_certificate\_renewal\_eligibility](#output\_acm\_certificate\_renewal\_eligibility) | Whether the certificate is eligible for managed renewal. |
| <a name="output_acm_certificate_renewal_summary"></a> [acm\_certificate\_renewal\_summary](#output\_acm\_certificate\_renewal\_summary) | Contains information about the status of ACM's managed renewal for the certificate. |
| <a name="output_acm_certificate_status"></a> [acm\_certificate\_status](#output\_acm\_certificate\_status) | Status of the certificate. |
| <a name="output_acm_certificate_tags_all"></a> [acm\_certificate\_tags\_all](#output\_acm\_certificate\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
| <a name="output_acm_certificate_type"></a> [acm\_certificate\_type](#output\_acm\_certificate\_type) | Source of the certificate. |
| <a name="output_acm_certificate_validataion_id"></a> [acm\_certificate\_validataion\_id](#output\_acm\_certificate\_validataion\_id) | Time at which the certificate was issued |
| <a name="output_cloudfront_distribution_arn"></a> [cloudfront\_distribution\_arn](#output\_cloudfront\_distribution\_arn) | ARN for the distribution. |
| <a name="output_cloudfront_distribution_caller_reference"></a> [cloudfront\_distribution\_caller\_reference](#output\_cloudfront\_distribution\_caller\_reference) | Internal value used by CloudFront to allow future updates to the distribution configuration. |
| <a name="output_cloudfront_distribution_domain_name"></a> [cloudfront\_distribution\_domain\_name](#output\_cloudfront\_distribution\_domain\_name) | Domain name corresponding to the distribution. |
| <a name="output_cloudfront_distribution_etag"></a> [cloudfront\_distribution\_etag](#output\_cloudfront\_distribution\_etag) | Current version of the distribution's information. |
| <a name="output_cloudfront_distribution_hosted_zone_id"></a> [cloudfront\_distribution\_hosted\_zone\_id](#output\_cloudfront\_distribution\_hosted\_zone\_id) | CloudFront Route 53 zone ID that can be used to route an Alias Resource Record Set to. |
| <a name="output_cloudfront_distribution_id"></a> [cloudfront\_distribution\_id](#output\_cloudfront\_distribution\_id) | Identifier for the distribution. |
| <a name="output_cloudfront_distribution_in_progress_validation_batches"></a> [cloudfront\_distribution\_in\_progress\_validation\_batches](#output\_cloudfront\_distribution\_in\_progress\_validation\_batches) | Number of invalidation batches currently in progress. |
| <a name="output_cloudfront_distribution_last_modified_time"></a> [cloudfront\_distribution\_last\_modified\_time](#output\_cloudfront\_distribution\_last\_modified\_time) | Date and time the distribution was last modified. |
| <a name="output_cloudfront_distribution_status"></a> [cloudfront\_distribution\_status](#output\_cloudfront\_distribution\_status) | Current status of the distribution. Deployed if the distribution's information is fully propagated throughout the Amazon CloudFront system. |
| <a name="output_cloudfront_distribution_tags_all"></a> [cloudfront\_distribution\_tags\_all](#output\_cloudfront\_distribution\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
| <a name="output_cloudfront_distribution_trusted_signers"></a> [cloudfront\_distribution\_trusted\_signers](#output\_cloudfront\_distribution\_trusted\_signers) | List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs. |
| <a name="output_cloudfront_function_arn"></a> [cloudfront\_function\_arn](#output\_cloudfront\_function\_arn) | Amazon Resource Name (ARN) identifying your CloudFront Function. |
| <a name="output_cloudfront_function_etag"></a> [cloudfront\_function\_etag](#output\_cloudfront\_function\_etag) | ETag hash of the function. This is the value for the DEVELOPMENT stage of the function. |
| <a name="output_cloudfront_function_live_stage_etag"></a> [cloudfront\_function\_live\_stage\_etag](#output\_cloudfront\_function\_live\_stage\_etag) | ETag hash of any LIVE stage of the function. |
| <a name="output_cloudfront_function_status"></a> [cloudfront\_function\_status](#output\_cloudfront\_function\_status) | Status of the function. Can be UNPUBLISHED, UNASSOCIATED or ASSOCIATED. |
| <a name="output_cloudfront_monitoring_subscription_id"></a> [cloudfront\_monitoring\_subscription\_id](#output\_cloudfront\_monitoring\_subscription\_id) | The ID of the CloudFront monitoring subscription, which corresponds to the distribution\_id. |
| <a name="output_cloudfront_origin_access_control_etag"></a> [cloudfront\_origin\_access\_control\_etag](#output\_cloudfront\_origin\_access\_control\_etag) | The current version of this Origin Access Control. |
| <a name="output_cloudfront_origin_access_control_id"></a> [cloudfront\_origin\_access\_control\_id](#output\_cloudfront\_origin\_access\_control\_id) | The unique identifier of this Origin Access Control. |
| <a name="output_route53_record_certificate_fqdn"></a> [route53\_record\_certificate\_fqdn](#output\_route53\_record\_certificate\_fqdn) | FQDN built using the zone domain and name (certificate). |
| <a name="output_route53_record_certificate_name"></a> [route53\_record\_certificate\_name](#output\_route53\_record\_certificate\_name) | The name of the record (certificate). |
| <a name="output_route53_record_web_fqdn"></a> [route53\_record\_web\_fqdn](#output\_route53\_record\_web\_fqdn) | FQDN built using the zone domain and name (web). |
| <a name="output_route53_record_web_name"></a> [route53\_record\_web\_name](#output\_route53\_record\_web\_name) | The name of the record (web). |
| <a name="output_s3_bucket_acl_logs_id"></a> [s3\_bucket\_acl\_logs\_id](#output\_s3\_bucket\_acl\_logs\_id) | The bucket, expected\_bucket\_owner (if configured), and acl (if configured) separated by commas (,) (logs). |
| <a name="output_s3_bucket_acl_web_id"></a> [s3\_bucket\_acl\_web\_id](#output\_s3\_bucket\_acl\_web\_id) | The bucket, expected\_bucket\_owner (if configured), and acl (if configured) separated by commas (,) (web). |
| <a name="output_s3_bucket_logging_web_id"></a> [s3\_bucket\_logging\_web\_id](#output\_s3\_bucket\_logging\_web\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. (web) |
| <a name="output_s3_bucket_logs_arn"></a> [s3\_bucket\_logs\_arn](#output\_s3\_bucket\_logs\_arn) | ARN of the bucket (logs). |
| <a name="output_s3_bucket_logs_domain_name"></a> [s3\_bucket\_logs\_domain\_name](#output\_s3\_bucket\_logs\_domain\_name) | Bucket domain name (logs). |
| <a name="output_s3_bucket_logs_hosted_zone_id"></a> [s3\_bucket\_logs\_hosted\_zone\_id](#output\_s3\_bucket\_logs\_hosted\_zone\_id) | Route 53 Hosted Zone ID for this bucket's region (logs). |
| <a name="output_s3_bucket_logs_id"></a> [s3\_bucket\_logs\_id](#output\_s3\_bucket\_logs\_id) | Name of the bucket (logs). |
| <a name="output_s3_bucket_logs_region"></a> [s3\_bucket\_logs\_region](#output\_s3\_bucket\_logs\_region) | AWS region this bucket resides in (logs). |
| <a name="output_s3_bucket_logs_regional_domain_name"></a> [s3\_bucket\_logs\_regional\_domain\_name](#output\_s3\_bucket\_logs\_regional\_domain\_name) | The bucket region-specific domain name (logs). |
| <a name="output_s3_bucket_logs_tags_all"></a> [s3\_bucket\_logs\_tags\_all](#output\_s3\_bucket\_logs\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block (logs). |
| <a name="output_s3_bucket_ownership_controls_logs_id"></a> [s3\_bucket\_ownership\_controls\_logs\_id](#output\_s3\_bucket\_ownership\_controls\_logs\_id) | S3 Bucket name (logs). |
| <a name="output_s3_bucket_ownership_controls_web_id"></a> [s3\_bucket\_ownership\_controls\_web\_id](#output\_s3\_bucket\_ownership\_controls\_web\_id) | S3 Bucket name (web). |
| <a name="output_s3_bucket_public_access_block_logs_id"></a> [s3\_bucket\_public\_access\_block\_logs\_id](#output\_s3\_bucket\_public\_access\_block\_logs\_id) | Name of the S3 bucket the configuration is attached to (logs). |
| <a name="output_s3_bucket_public_access_block_web_id"></a> [s3\_bucket\_public\_access\_block\_web\_id](#output\_s3\_bucket\_public\_access\_block\_web\_id) | Name of the S3 bucket the configuration is attached to (web). |
| <a name="output_s3_bucket_server_side_encryption_configuration_logs_id"></a> [s3\_bucket\_server\_side\_encryption\_configuration\_logs\_id](#output\_s3\_bucket\_server\_side\_encryption\_configuration\_logs\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (logs). |
| <a name="output_s3_bucket_server_side_encryption_configuration_web_id"></a> [s3\_bucket\_server\_side\_encryption\_configuration\_web\_id](#output\_s3\_bucket\_server\_side\_encryption\_configuration\_web\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (web). |
| <a name="output_s3_bucket_versioning_logs_id"></a> [s3\_bucket\_versioning\_logs\_id](#output\_s3\_bucket\_versioning\_logs\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (logs). |
| <a name="output_s3_bucket_versioning_web_id"></a> [s3\_bucket\_versioning\_web\_id](#output\_s3\_bucket\_versioning\_web\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided (web). |
| <a name="output_s3_bucket_web_arn"></a> [s3\_bucket\_web\_arn](#output\_s3\_bucket\_web\_arn) | ARN of the bucket (web). |
| <a name="output_s3_bucket_web_domain_name"></a> [s3\_bucket\_web\_domain\_name](#output\_s3\_bucket\_web\_domain\_name) | Bucket domain name (web). |
| <a name="output_s3_bucket_web_hosted_zone_id"></a> [s3\_bucket\_web\_hosted\_zone\_id](#output\_s3\_bucket\_web\_hosted\_zone\_id) | Route 53 Hosted Zone ID for this bucket's region (web). |
| <a name="output_s3_bucket_web_id"></a> [s3\_bucket\_web\_id](#output\_s3\_bucket\_web\_id) | Name of the bucket (web). |
| <a name="output_s3_bucket_web_region"></a> [s3\_bucket\_web\_region](#output\_s3\_bucket\_web\_region) | AWS region this bucket resides in (web). |
| <a name="output_s3_bucket_web_regional_domain_name"></a> [s3\_bucket\_web\_regional\_domain\_name](#output\_s3\_bucket\_web\_regional\_domain\_name) | The bucket region-specific domain name (web). |
| <a name="output_s3_bucket_web_tags_all"></a> [s3\_bucket\_web\_tags\_all](#output\_s3\_bucket\_web\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block (web). |
<!-- END_TF_DOCS -->