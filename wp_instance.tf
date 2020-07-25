resource "aws_instance" "wp_instance" {
  ami               = "ami-0e9c43b5bc2603d9d"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name = "key1"
  subnet_id     = "${aws_subnet.public_subnet.id}"
  security_groups = [ "${aws_security_group.wp_sec_group.id}" ]
 
 
  tags = {
        Name = "mywebserver"
  }
}