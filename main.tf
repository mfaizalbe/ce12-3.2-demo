# checkov:skip=CKV_AWS_18 reason: not required for lab
# checkov:skip=CKV_AWS_144 reason: not required for lab
# checkov:skip=CKV_AWS_145 reason: not required for lab
# checkov:skip=CKV2_AWS_62 reason: not required for lab
# checkov:skip=CKV_AWS_300 reason: not required for lab
# checkov:skip=CKV2_AWS_6 reason: not required for lab (if needed)

provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket"
    key    = "state.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "sctp-ce12-tfstate-bucket" # Change this
    key    = "state.tfstate"            # Change this
    region = "ap-southeast-1"
  }
}

resource "aws_s3_bucket" "s3_tf" {
  bucket_prefix = "terraform-faizal-" # Set your bucket name here
}