provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket" # Change this
    key    = "state.tfstate"  # Change this
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix =  "terraform-faizal-" # Set your bucket name here
}