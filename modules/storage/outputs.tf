output "s3buckets01" {
    value = aws_s3_bucket.dev-bucket01.bucket
}

output "s3buckets02" {
    value = aws_s3_bucket.dev-bucket02.bucket
}

output "s3buckets03" {
    value = aws_s3_bucket.dev-bucket03.bucket
}