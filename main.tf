terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0.0"
        }
    }
    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "my_server" {
    ami = "ami-830c94e3"
    instance_type = "t2.micro"
}

tags = {
    Name = "my test server"
}