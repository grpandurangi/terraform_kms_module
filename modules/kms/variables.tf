
variable "tags" {
  type    = map(string)
  default = {}
}

variable "description" {
   type = string
   default = "KMS key for EBS encryption"
}

variable "rotation" {
    type = boolean
    default = true
}

variable "deletion_window" {
    type = string
    default = "10"
}