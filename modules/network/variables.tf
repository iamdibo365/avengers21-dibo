variable "sshport" {
    type = number 
    default = 22
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "tcp" {
    type = string
    default = "tcp"
}

variable "ssh" {
    type = string
    default = "tcp"
}

variable "httpsport" {
    type = number 
    default = 443
}

variable "subnet-cidr-public1" {
    type = string
    default = "10.0.2.0/24"
}

variable "subnet-cidr-public2" {
    type = string
    default = "10.0.4.0/24"
}

variable "tags" {
    type = map 
    default = {
        Name = "DEV-VPC"
        Env = "PROD"
    }
}
