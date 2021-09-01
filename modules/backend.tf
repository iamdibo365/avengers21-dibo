
terraform {
  backend "s3" {
    bucket = "dibo-dev-tfstate"
    key = "dibo-dev-tfstate04/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dibo-terraform-state-lock"
  }
}
/*
when creating the Dynamp DB table, make sure to create partition key as "LockID".
*/ 

