resource "aws_vpc" "dev-vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    tags = var.tags
}

resource "aws_security_group" "dev-secgrp" {
    name = "Allow dev HTTPS"
    vpc_id = aws_vpc.dev-vpc.id
    ingress {
        from_port = var.httpsport
        to_port = var.httpsport
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = var.httpsport
        to_port = var.httpsport
        protocol = var.tcp
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = var.sshport
        to_port = var.sshport
        protocol = var.ssh
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = var.sshport
        to_port = var.sshport
        protocol = var.ssh
        cidr_blocks = ["0.0.0.0/0"]
    }

    depends_on = [aws_vpc.dev-vpc]
}

resource "aws_subnet" "public-subnet1" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.subnet-cidr-public1
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "public-subnet2" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = var.subnet-cidr-public2
  availability_zone = "us-east-1b"
}