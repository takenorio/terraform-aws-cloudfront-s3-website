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

output "route53_record_fqdn" {
  description = "FQDN built using the zone domain and name."
  value       = aws_route53_record.this[var.domain_name].fqdn
}

output "route53_record_name" {
  description = "The name of the record."
  value       = aws_route53_record.this[var.domain_name].name
}
