resource "aws_subnet" "pvt_subnet" {
  vpc_id     = "${aws_vpc.my_vpc.id}"
  availability_zone = "ap-south-1a"
  cidr_block = "192.168.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "pvt_subnet"
  }
}