provider "aws" {
region = "ap-south-1"
access_key = "AKIASHQNVTHBJWDQDATJ"
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
