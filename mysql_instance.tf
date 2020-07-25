resource "aws_instance" "mysql_instance" {
  ami               = "ami-0eb6467b60a881234"
  instance_type     = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name = "key1"
  subnet_id     = "${aws_subnet.pvt_subnet.id}"
  vpc_security_group_ids = [aws_security_group.mysql_sec_group.id ,aws_security_group.only_ssh_sql_bositon.id]
 
 
  tags = {
        Name = "mysql"
  }
}