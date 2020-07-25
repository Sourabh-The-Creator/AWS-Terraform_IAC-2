//creating key pair
resource "tls_private_key" "my_key_t3" {
  algorithm = "RSA"
}


module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"
  key_name   = "my_key_t3"
  public_key = tls_private_key.my_key_t3.public_key_openssh
}

output "key"{

	value=tls_private_key.my_key_t3.public_key_openssh
}