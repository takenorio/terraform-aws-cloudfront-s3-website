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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.76.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.6.3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.76.0 |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | >= 5.76.0 |
| <a name="provider_random"></a> [random](#provider\_random) | >= 3.6.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_cloudfront_distribution.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_function) | resource |
| [aws_cloudfront_monitoring_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_monitoring_subscription) | resource |
| [aws_cloudfront_origin_access_control.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control) | resource |
| [aws_route53_record.certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_s3_bucket.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_logging.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging) | resource |
| [aws_s3_bucket_ownership_controls.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_ownership_controls.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_policy.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_public_access_block.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_bucket_versioning.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [random_string.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_canonical_user_id.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/canonical_user_id) | data source |
| [aws_cloudfront_cache_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_cache_policy) | data source |
| [aws_cloudfront_log_delivery_canonical_user_id.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_log_delivery_canonical_user_id) | data source |
| [aws_cloudfront_origin_request_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_origin_request_policy) | data source |
| [aws_cloudfront_response_headers_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_response_headers_policy) | data source |
| [aws_iam_policy_document.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudfront_distribution_comment"></a> [cloudfront\_distribution\_comment](#input\_cloudfront\_distribution\_comment) | A comment to describe the CloudFront distribution. | `string` | `"simple website"` | no |
| <a name="input_cloudfront_distribution_logging_prefix"></a> [cloudfront\_distribution\_logging\_prefix](#input\_cloudfront\_distribution\_logging\_prefix) | Prefix for the CloudFront distribution that will store logs. | `string` | `"cloudfront-distribution-logs/"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to be managed by Route53. | `string` | `""` | no |
| <a name="input_logging_bucket_name"></a> [logging\_bucket\_name](#input\_logging\_bucket\_name) | Name of the S3 bucket for storing logs. Must be globally unique. | `string` | `""` | no |
| <a name="input_s3_bucket_logging_prefix"></a> [s3\_bucket\_logging\_prefix](#input\_s3\_bucket\_logging\_prefix) | Prefix for the S3 bucket that will store logs. | `string` | `"s3-bucket-logs/"` | no |
| <a name="input_website_bucket_name"></a> [website\_bucket\_name](#input\_website\_bucket\_name) | Name of the S3 bucket for storing website content. Must be globally unique. | `string` | `""` | no |

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
| <a name="output_acm_certificate_validation_id"></a> [acm\_certificate\_validation\_id](#output\_acm\_certificate\_validation\_id) | Time at which the certificate was issued. |
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
| <a name="output_route53_record_certificate_fqdn"></a> [route53\_record\_certificate\_fqdn](#output\_route53\_record\_certificate\_fqdn) | FQDN built using the zone domain and name. |
| <a name="output_route53_record_certificate_name"></a> [route53\_record\_certificate\_name](#output\_route53\_record\_certificate\_name) | The name of the record. |
| <a name="output_route53_record_website_fqdn"></a> [route53\_record\_website\_fqdn](#output\_route53\_record\_website\_fqdn) | FQDN built using the zone domain and name. |
| <a name="output_route53_record_website_name"></a> [route53\_record\_website\_name](#output\_route53\_record\_website\_name) | The name of the record. |
| <a name="output_s3_bucket_acl_logging_id"></a> [s3\_bucket\_acl\_logging\_id](#output\_s3\_bucket\_acl\_logging\_id) | The bucket, expected\_bucket\_owner (if configured), and acl (if configured) separated by commas (,). |
| <a name="output_s3_bucket_logging_arn"></a> [s3\_bucket\_logging\_arn](#output\_s3\_bucket\_logging\_arn) | ARN of the bucket. |
| <a name="output_s3_bucket_logging_domain_name"></a> [s3\_bucket\_logging\_domain\_name](#output\_s3\_bucket\_logging\_domain\_name) | Bucket domain name. |
| <a name="output_s3_bucket_logging_hosted_zone_id"></a> [s3\_bucket\_logging\_hosted\_zone\_id](#output\_s3\_bucket\_logging\_hosted\_zone\_id) | Route 53 Hosted Zone ID for this bucket's region. |
| <a name="output_s3_bucket_logging_id"></a> [s3\_bucket\_logging\_id](#output\_s3\_bucket\_logging\_id) | Name of the bucket. |
| <a name="output_s3_bucket_logging_region"></a> [s3\_bucket\_logging\_region](#output\_s3\_bucket\_logging\_region) | AWS region this bucket resides in. |
| <a name="output_s3_bucket_logging_regional_domain_name"></a> [s3\_bucket\_logging\_regional\_domain\_name](#output\_s3\_bucket\_logging\_regional\_domain\_name) | The bucket region-specific domain name. |
| <a name="output_s3_bucket_logging_tags_all"></a> [s3\_bucket\_logging\_tags\_all](#output\_s3\_bucket\_logging\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
| <a name="output_s3_bucket_logging_website_id"></a> [s3\_bucket\_logging\_website\_id](#output\_s3\_bucket\_logging\_website\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. |
| <a name="output_s3_bucket_ownership_controls_logging_id"></a> [s3\_bucket\_ownership\_controls\_logging\_id](#output\_s3\_bucket\_ownership\_controls\_logging\_id) | S3 Bucket name. |
| <a name="output_s3_bucket_ownership_controls_website_id"></a> [s3\_bucket\_ownership\_controls\_website\_id](#output\_s3\_bucket\_ownership\_controls\_website\_id) | S3 Bucket name. |
| <a name="output_s3_bucket_public_access_block_logging_id"></a> [s3\_bucket\_public\_access\_block\_logging\_id](#output\_s3\_bucket\_public\_access\_block\_logging\_id) | Name of the S3 bucket the configuration is attached to. |
| <a name="output_s3_bucket_public_access_block_website_id"></a> [s3\_bucket\_public\_access\_block\_website\_id](#output\_s3\_bucket\_public\_access\_block\_website\_id) | Name of the S3 bucket the configuration is attached to. |
| <a name="output_s3_bucket_server_side_encryption_configuration_logging_id"></a> [s3\_bucket\_server\_side\_encryption\_configuration\_logging\_id](#output\_s3\_bucket\_server\_side\_encryption\_configuration\_logging\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. |
| <a name="output_s3_bucket_server_side_encryption_configuration_website_id"></a> [s3\_bucket\_server\_side\_encryption\_configuration\_website\_id](#output\_s3\_bucket\_server\_side\_encryption\_configuration\_website\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. |
| <a name="output_s3_bucket_versioning_logging_id"></a> [s3\_bucket\_versioning\_logging\_id](#output\_s3\_bucket\_versioning\_logging\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. |
| <a name="output_s3_bucket_versioning_website_id"></a> [s3\_bucket\_versioning\_website\_id](#output\_s3\_bucket\_versioning\_website\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. |
| <a name="output_s3_bucket_website_arn"></a> [s3\_bucket\_website\_arn](#output\_s3\_bucket\_website\_arn) | ARN of the bucket. |
| <a name="output_s3_bucket_website_domain_name"></a> [s3\_bucket\_website\_domain\_name](#output\_s3\_bucket\_website\_domain\_name) | Bucket domain name. |
| <a name="output_s3_bucket_website_hosted_zone_id"></a> [s3\_bucket\_website\_hosted\_zone\_id](#output\_s3\_bucket\_website\_hosted\_zone\_id) | Route 53 Hosted Zone ID for this bucket's region. |
| <a name="output_s3_bucket_website_id"></a> [s3\_bucket\_website\_id](#output\_s3\_bucket\_website\_id) | Name of the bucket. |
| <a name="output_s3_bucket_website_region"></a> [s3\_bucket\_website\_region](#output\_s3\_bucket\_website\_region) | AWS region this bucket resides in |
| <a name="output_s3_bucket_website_regional_domain_name"></a> [s3\_bucket\_website\_regional\_domain\_name](#output\_s3\_bucket\_website\_regional\_domain\_name) | The bucket region-specific domain name. |
| <a name="output_s3_bucket_website_tags_all"></a> [s3\_bucket\_website\_tags\_all](#output\_s3\_bucket\_website\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
<!-- END_TF_DOCS -->
