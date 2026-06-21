variable "region" {
    default = "ap-south-1"
    description = "this is for variable"
}

variable "mybucket" {
    default=  "bucket-pramod"
}
variable "ami" {
    default= "ami-01a00762f46d584a1"
}

variable "instance_type" {
    default= "t3.micro"
}

variable "key_name" {
    default= "Pune-key"
}

variable "mysg" {
    default= "[sg-0207caf3f6f306804]"
}

variable "instance-name" {
    default= "3rd-instance"
}