output "kms_key_id" {
  description = "The ID of the created KMS key"
  value       = module.kms.key_id
}

output "kms_key_arn" {
  description = "The ARN of the created KMS key"
  value       = module.kms.key_arn
}

output "kms_alias_name" {
  description = "The alias name associated with the KMS key"
  value       = module.kms.alias_name
}
