resource "aws_instance" "bostion_host" {
  depends_on=[aws_security_group.only_ssh_bostion, tls_private_key.my_key_t3]
  ami           = "ami-0732b62d310b80e97"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.public_subnet.id}"
  vpc_security_group_ids = ["${aws_security_group.only_ssh_bostion.id}"]
  key_name      = "key1"

  tags = {
    Name = "bostion_host"
  }
}