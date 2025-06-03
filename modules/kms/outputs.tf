output "kms_key_id" {
  value = aws_kms_key.ebs.id
}

output "kms_key_alias" {
  value = aws_kms_alias.ebs.arn
}