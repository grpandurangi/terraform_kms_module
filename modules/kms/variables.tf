
variable "tags" {
  type    = map(string)
  default = {}
}

variable "description" {
   type = string
   default = "KMS key for EBS encryption"
}

variable "rotation" {
    type = bool
    default = true
}

variable "deletion_window" {
    type = string
    default = "10"
}

variable "key_alias" {
   type = string
   default = "alias/ebs-kms-alias"
}