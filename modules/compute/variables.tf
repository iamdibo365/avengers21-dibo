variable "ami" {
    type = string
    default = "ami-0c2b8ca1dad447f8a"
}

variable "type" {
    type = string 
    default = "t2.micro"
}

variable "tags" {
    type = map 
    default = {
        Name = "WebServer"
        Env = "Dev"
    }
}

variable "count-ec2" {
    type = number
    default = 5
}

variable "subnet-cidr-public" {
    type = string
    default = "10.0.2.0/24"
}

variable "voltype" {
    type = string
    default = "gp2"
    description = ""
}

variable "volsize" {
    type = number
    default = 200
    description = ""
}

variable "az" {
    type = string 
    default = "us-east-1c"
    description = ""
}

variable "devname" {
    type = string
    default = "/dev/xvde"
    description = ""
}