terraform {
 backend "s3" {
 bucket = "seanbox-tfstate"
 key    = "dev/terraform.tfstate"
 region = "eu-west-1"
 }
 }