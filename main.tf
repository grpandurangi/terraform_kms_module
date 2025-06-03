
module "kms" {
  source            = "./modules/kms"
  
  tags   = local.common_tags
}
