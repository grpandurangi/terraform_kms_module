
mock_provider "aws" {
  alias = "mock"
}

run "plan_create_kms" {
  command = plan

  providers = {
    aws = aws.mock
  }

module {
  source      = "./modules/kms"
}

  variables {
      description       = "dummy kms key for testing"
      rotation          =  true
      deletion_window      = 20
      key_alias         = "alias/dummy-kms-alias"
  }


    assert {
    condition     = aws_kms_key.ebs.description == "dummy kms key for testing"
    error_message = "KMS kms_key_alias is different than specified in mock test"
  }

    assert {
    condition     = aws_kms_alias.ebs.name == "alias/dummy-kms-alias"
    error_message = "KMS kms_key_alias is different than specified in mock test"
  }
}

run "apply_create_kms" {
  command = apply

  providers = {
    aws = aws.mock
  }

module {
  source      = "./modules/kms"
}

  variables {
      description       = "dummy kms key for testing"
      rotation          =  true
      deletion_window      = 20
      key_alias         = "alias/dummy-kms-alias"
  }

    assert {
    condition     = aws_kms_key.ebs.arn != ""
    error_message = "KMS kms_key_arn should not be null"
  }

}
