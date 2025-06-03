  ami               = "ami-0953476d60561c955"
  instance_type     = "t3.micro"
  subnet_id         = "subnet-0a429c219246b165b"
  key_name          = "grpmain"
  security_group_ids = ["sg-0891f6f21c6cb0cde"]
  volume_size       = 20
  volume_type       = "gp3"

  