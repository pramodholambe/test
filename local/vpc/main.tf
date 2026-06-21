resource "aws_vpc" "myvpc {
  cidr_block= "10.0.0.0/16"
  tags = {
    Name= "myvpc"
  }
}
resource "aws_subnet" "pub-sub" {
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    tags = {
        Name = "pub-sub"
    } 
}

resource "aws_subnet" "pvt-sub" {
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.2.0/24"
    tags = {
        Name = "pvt-sub"
    }
}