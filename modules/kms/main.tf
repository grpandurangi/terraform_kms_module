resource "aws_kms_key" "ebs" {
  description             = var.description
  enable_key_rotation     = var.rotation
  deletion_window_in_days = var.deletion_window
  tags                    = var.tags
}


resource "aws_kms_alias" "ebs" {
  name          = "alias/ebs-kms-alias"
  target_key_id = aws_kms_key.ebs.key_id
}
