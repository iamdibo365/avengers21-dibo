resource "aws_s3_bucket" "dev-bucket01" {
    bucket = var.bucketlist[0]
}

resource "aws_s3_bucket" "dev-bucket02" {
    bucket = var.bucketlist[1]
}

resource "aws_s3_bucket" "dev-bucket03" {
    bucket = var.bucketlist[2]
}