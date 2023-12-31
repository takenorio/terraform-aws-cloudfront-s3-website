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
| [aws_s3_bucket.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_ownership_controls.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.logging](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_canonical_user_id.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/canonical_user_id) | data source |
| [aws_cloudfront_log_delivery_canonical_user_id.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/cloudfront_log_delivery_canonical_user_id) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_logging_bucket_name"></a> [logging\_bucket\_name](#input\_logging\_bucket\_name) | Name of the S3 bucket for storing logs. Must be globally unique. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_bucket_acl_id"></a> [s3\_bucket\_acl\_id](#output\_s3\_bucket\_acl\_id) | The bucket, expected\_bucket\_owner (if configured), and acl (if configured) separated by commas (,). |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | ARN of the bucket. |
| <a name="output_s3_bucket_domain_name"></a> [s3\_bucket\_domain\_name](#output\_s3\_bucket\_domain\_name) | Bucket domain name. |
| <a name="output_s3_bucket_hosted_zone_id"></a> [s3\_bucket\_hosted\_zone\_id](#output\_s3\_bucket\_hosted\_zone\_id) | Route 53 Hosted Zone ID for this bucket's region. |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | Name of the bucket. |
| <a name="output_s3_bucket_ownership_controls_id"></a> [s3\_bucket\_ownership\_controls\_id](#output\_s3\_bucket\_ownership\_controls\_id) | S3 Bucket name. |
| <a name="output_s3_bucket_public_access_block_id"></a> [s3\_bucket\_public\_access\_block\_id](#output\_s3\_bucket\_public\_access\_block\_id) | Name of the S3 bucket the configuration is attached to. |
| <a name="output_s3_bucket_region"></a> [s3\_bucket\_region](#output\_s3\_bucket\_region) | AWS region this bucket resides in. |
| <a name="output_s3_bucket_regional_domain_name"></a> [s3\_bucket\_regional\_domain\_name](#output\_s3\_bucket\_regional\_domain\_name) | The bucket region-specific domain name. |
| <a name="output_s3_bucket_server_side_encryption_configuration_id"></a> [s3\_bucket\_server\_side\_encryption\_configuration\_id](#output\_s3\_bucket\_server\_side\_encryption\_configuration\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. |
| <a name="output_s3_bucket_tags_all"></a> [s3\_bucket\_tags\_all](#output\_s3\_bucket\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
| <a name="output_s3_bucket_versioning_id"></a> [s3\_bucket\_versioning\_id](#output\_s3\_bucket\_versioning\_id) | The bucket or bucket and expected\_bucket\_owner separated by a comma (,) if the latter is provided. |
<!-- END_TF_DOCS -->