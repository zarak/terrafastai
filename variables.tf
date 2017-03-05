variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}

variable "aws_region" {
    default = "us-west-2"
}

variable "ami" {
    default = "ami-f8fd5998" # Oregon
}

variable "gpu_ami" {
    default = "ami-bc508adc" # Oregon
}

variable "vpc_cidr" {
    default = "10.0.0.0/28"
}

variable "public_subnet_cidr" {
    default = "10.0.0.0/28"
}

variable "instance_type" {}
