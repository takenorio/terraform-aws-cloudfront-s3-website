<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_distribution.redirection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_distribution) | resource |
| [aws_cloudfront_function.redirection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_function) | resource |
| [aws_cloudfront_monitoring_subscription.redirection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_monitoring_subscription) | resource |
| [aws_cloudfront_origin_access_control.redirection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control) | resource |
| [aws_route53_record.redirection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_s3_bucket_policy.redirection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_cloudfront_cache_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_cache_policy) | data source |
| [aws_cloudfront_origin_request_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_origin_request_policy) | data source |
| [aws_cloudfront_response_headers_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_response_headers_policy) | data source |
| [aws_iam_policy_document.redirection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_certificate_arn"></a> [acm\_certificate\_arn](#input\_acm\_certificate\_arn) | ARN of the ACM certificate. | `string` | n/a | yes |
| <a name="input_cloudfront_distribution_comment"></a> [cloudfront\_distribution\_comment](#input\_cloudfront\_distribution\_comment) | A comment to describe the CloudFront distribution. | `string` | `"redirect to website"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to be managed by Route53. | `string` | n/a | yes |
| <a name="input_redirection_bucket_name"></a> [redirection\_bucket\_name](#input\_redirection\_bucket\_name) | Name of the S3 bucket for redirection. Must be globally unique. | `string` | n/a | yes |
| <a name="input_redirection_regional_domain_name"></a> [redirection\_regional\_domain\_name](#input\_redirection\_regional\_domain\_name) | The website bucket region-specific domain name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
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
| <a name="output_route53_record_fqdn"></a> [route53\_record\_fqdn](#output\_route53\_record\_fqdn) | FQDN built using the zone domain and name. |
| <a name="output_route53_record_name"></a> [route53\_record\_name](#output\_route53\_record\_name) | The name of the record. |
<!-- END_TF_DOCS -->