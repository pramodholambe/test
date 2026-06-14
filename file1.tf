provider "aws" {
    region= "ap-south-1"
}
resource "aws_instance" "myec2"{
    ami= "ami-01a00762f46d584a1"
    instance_type= "t3.micro"
tag= {
        Name= "1st-ec2"
        name= "pramod"
        env= "dev"
    }
    
}