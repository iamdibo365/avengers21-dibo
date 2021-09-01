provider "aws" {
    region = "us-east-1"
}
 
module "computemodule" {
 source = "./compute/"
}

module "databasemodule" {
 source = "./databases/"
}

module "networkmodule" {
 source = "./network/"
}

module "securitymodule" {
 source = "./security/"
}

module "storagemodule" {
 source = "./storage/"
}

output "instanceid" {
    value = module.computemodule.instanceid
}

output "PublicIP" {
    value = module.computemodule.PublicIP
}

output "vpcid" {
    value = module.networkmodule.vpcid
}

output "s3buckets01" {
    value = module.storagemodule.s3buckets01
}

output "s3buckets02" {
    value = module.storagemodule.s3buckets02
}

output "s3buckets03" {
    value = module.storagemodule.s3buckets03
}
