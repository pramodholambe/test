terraform {
    backend "s3" {
    bucket = "bucket-pramod"
    region = "ap-south-1"
    key = "tfstate"
    } 
}

provider "aws" {
    region= "ap-south-1"
}
resource "aws_instance" "myec2"{
    ami= "ami-01a00762f46d584a1"
    instance_type= "t3.micro"
vpc_security_group_ids = ["sg-0207caf3f6f306804"]
tags = {
    Name = "2nd-ec2"
    name = "pramod"
    env = "dev"
}
}