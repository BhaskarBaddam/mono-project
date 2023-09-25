provider "aws" {
region = "ap-south-1"
access_key = "AKIASHQNVTHBAUHUAJ47"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0ff30663ed13c2290"
instance_type = "t2.micro"
key_name = "newpair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}
