(base) grpandurangiai@Gururajs-MacBook-Pro terraform_kms_module % terraform test -verbose
tests/a-unit-test.tftest.hcl... in progress
  run "plan_create_kms"... pass

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_kms_alias.ebs will be created
  + resource "aws_kms_alias" "ebs" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + name           = "alias/dummy-kms-alias"
      + name_prefix    = (known after apply)
      + target_key_arn = (known after apply)
      + target_key_id  = (known after apply)
    }

  # aws_kms_key.ebs will be created
  + resource "aws_kms_key" "ebs" {
      + arn                     = (known after apply)
      + deletion_window_in_days = 20
      + description             = "dummy kms key for testing"
      + enable_key_rotation     = true
      + id                      = (known after apply)
      + key_id                  = (known after apply)
      + multi_region            = (known after apply)
      + policy                  = (known after apply)
      + rotation_period_in_days = (known after apply)
      + tags                    = {}
      + tags_all                = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + alias_name = "alias/dummy-kms-alias"
  + key_arn    = (known after apply)
  + key_id     = (known after apply)

  run "apply_create_kms"... pass

# aws_kms_alias.ebs:
resource "aws_kms_alias" "ebs" {
    arn            = "rx4jmu28"
    id             = "dvoljej7"
    name           = "alias/dummy-kms-alias"
    name_prefix    = "v5fd1jr8"
    target_key_arn = "qp6bmjsz"
    target_key_id  = "y645t1kd"
}

# aws_kms_key.ebs:
resource "aws_kms_key" "ebs" {
    arn                     = "6k6qqqp9"
    deletion_window_in_days = 20
    description             = "dummy kms key for testing"
    enable_key_rotation     = true
    id                      = "xegw2fxp"
    key_id                  = "y645t1kd"
    multi_region            = false
    policy                  = "0pfqun06"
    rotation_period_in_days = 0
    tags                    = {}
    tags_all                = {}
}


Outputs:

alias_name = "alias/dummy-kms-alias"
key_arn = "6k6qqqp9"
key_id = "y645t1kd"

tests/a-unit-test.tftest.hcl... tearing down
tests/a-unit-test.tftest.hcl... pass
tests/b-func.tftest.hcl... in progress
  run "plan_create_kms"... pass

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_kms_alias.ebs will be created
  + resource "aws_kms_alias" "ebs" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + name           = "alias/dummy-kms-alias"
      + name_prefix    = (known after apply)
      + target_key_arn = (known after apply)
      + target_key_id  = (known after apply)
    }

  # aws_kms_key.ebs will be created
  + resource "aws_kms_key" "ebs" {
      + arn                                = (known after apply)
      + bypass_policy_lockout_safety_check = false
      + customer_master_key_spec           = "SYMMETRIC_DEFAULT"
      + deletion_window_in_days            = 20
      + description                        = "dummy kms key for testing"
      + enable_key_rotation                = true
      + id                                 = (known after apply)
      + is_enabled                         = true
      + key_id                             = (known after apply)
      + key_usage                          = "ENCRYPT_DECRYPT"
      + multi_region                       = (known after apply)
      + policy                             = (known after apply)
      + rotation_period_in_days            = (known after apply)
      + tags_all                           = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + alias_name = "alias/dummy-kms-alias"
  + key_arn    = (known after apply)
  + key_id     = (known after apply)

  run "apply_create_kms"... pass

# aws_kms_alias.ebs:
resource "aws_kms_alias" "ebs" {
    arn            = "arn:aws:kms:us-east-1:444014219622:alias/dummy-kms-alias"
    id             = "alias/dummy-kms-alias"
    name           = "alias/dummy-kms-alias"
    name_prefix    = null
    target_key_arn = "arn:aws:kms:us-east-1:444014219622:key/4dc70816-1e2c-4e35-83e4-e2e5c948e680"
    target_key_id  = "4dc70816-1e2c-4e35-83e4-e2e5c948e680"
}

# aws_kms_key.ebs:
resource "aws_kms_key" "ebs" {
    arn                                = "arn:aws:kms:us-east-1:444014219622:key/4dc70816-1e2c-4e35-83e4-e2e5c948e680"
    bypass_policy_lockout_safety_check = false
    custom_key_store_id                = null
    customer_master_key_spec           = "SYMMETRIC_DEFAULT"
    deletion_window_in_days            = 20
    description                        = "dummy kms key for testing"
    enable_key_rotation                = true
    id                                 = "4dc70816-1e2c-4e35-83e4-e2e5c948e680"
    is_enabled                         = true
    key_id                             = "4dc70816-1e2c-4e35-83e4-e2e5c948e680"
    key_usage                          = "ENCRYPT_DECRYPT"
    multi_region                       = false
    policy                             = jsonencode(
        {
            Id        = "key-default-1"
            Statement = [
                {
                    Action    = "kms:*"
                    Effect    = "Allow"
                    Principal = {
                        AWS = "arn:aws:iam::444014219622:root"
                    }
                    Resource  = "*"
                    Sid       = "Enable IAM User Permissions"
                },
            ]
            Version   = "2012-10-17"
        }
    )
    rotation_period_in_days            = 365
    tags_all                           = {}
    xks_key_id                         = null
}


Outputs:

alias_name = "alias/dummy-kms-alias"
key_arn = "arn:aws:kms:us-east-1:444014219622:key/4dc70816-1e2c-4e35-83e4-e2e5c948e680"
key_id = "4dc70816-1e2c-4e35-83e4-e2e5c948e680"

tests/b-func.tftest.hcl... tearing down
tests/b-func.tftest.hcl... pass

Success! 4 passed, 0 failed.

*******

(base) grpandurangiai@Gururajs-MacBook-Pro terraform_kms_module % terraform test -filter=tests/b-functional-tests.tftest.hcl -verbose
tests/b-functional-tests.tftest.hcl... in progress
  run "plan_create_kms"... pass

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_kms_alias.ebs will be created
  + resource "aws_kms_alias" "ebs" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + name           = "alias/dummy-kms-alias"
      + name_prefix    = (known after apply)
      + target_key_arn = (known after apply)
      + target_key_id  = (known after apply)
    }

  # aws_kms_key.ebs will be created
  + resource "aws_kms_key" "ebs" {
      + arn                                = (known after apply)
      + bypass_policy_lockout_safety_check = false
      + customer_master_key_spec           = "SYMMETRIC_DEFAULT"
      + deletion_window_in_days            = 20
      + description                        = "dummy kms key for testing"
      + enable_key_rotation                = true
      + id                                 = (known after apply)
      + is_enabled                         = true
      + key_id                             = (known after apply)
      + key_usage                          = "ENCRYPT_DECRYPT"
      + multi_region                       = (known after apply)
      + policy                             = (known after apply)
      + rotation_period_in_days            = (known after apply)
      + tags_all                           = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + alias_name = "alias/dummy-kms-alias"
  + key_arn    = (known after apply)
  + key_id     = (known after apply)

  run "apply_create_kms"... pass

# aws_kms_alias.ebs:
resource "aws_kms_alias" "ebs" {
    arn            = "arn:aws:kms:us-east-1:444014219622:alias/dummy-kms-alias"
    id             = "alias/dummy-kms-alias"
    name           = "alias/dummy-kms-alias"
    name_prefix    = null
    target_key_arn = "arn:aws:kms:us-east-1:444014219622:key/35ddf03b-0533-439f-b9a3-35094dad53c8"
    target_key_id  = "35ddf03b-0533-439f-b9a3-35094dad53c8"
}

# aws_kms_key.ebs:
resource "aws_kms_key" "ebs" {
    arn                                = "arn:aws:kms:us-east-1:444014219622:key/35ddf03b-0533-439f-b9a3-35094dad53c8"
    bypass_policy_lockout_safety_check = false
    custom_key_store_id                = null
    customer_master_key_spec           = "SYMMETRIC_DEFAULT"
    deletion_window_in_days            = 20
    description                        = "dummy kms key for testing"
    enable_key_rotation                = true
    id                                 = "35ddf03b-0533-439f-b9a3-35094dad53c8"
    is_enabled                         = true
    key_id                             = "35ddf03b-0533-439f-b9a3-35094dad53c8"
    key_usage                          = "ENCRYPT_DECRYPT"
    multi_region                       = false
    policy                             = jsonencode(
        {
            Id        = "key-default-1"
            Statement = [
                {
                    Action    = "kms:*"
                    Effect    = "Allow"
                    Principal = {
                        AWS = "arn:aws:iam::444014219622:root"
                    }
                    Resource  = "*"
                    Sid       = "Enable IAM User Permissions"
                },
            ]
            Version   = "2012-10-17"
        }
    )
    rotation_period_in_days            = 365
    tags_all                           = {}
    xks_key_id                         = null
}


Outputs:

alias_name = "alias/dummy-kms-alias"
key_arn = "arn:aws:kms:us-east-1:444014219622:key/35ddf03b-0533-439f-b9a3-35094dad53c8"
key_id = "35ddf03b-0533-439f-b9a3-35094dad53c8"

tests/b-functional-tests.tftest.hcl... tearing down
tests/b-functional-tests.tftest.hcl... pass

Success! 2 passed, 0 failed.
(base) grpandurangiai@Gururajs-MacBook-Pro terraform_kms_module % 

***************