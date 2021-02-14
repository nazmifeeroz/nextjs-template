terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  region                  = var.region
  shared_credentials_file = var.aws_credentials
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.s3_bucket
  acl    = "public-read"
  policy = templatefile("policy.json", {
    s3_bucket = var.s3_bucket
  })

  website {
    index_document = "index.html"
    error_document = "404.html"

  }
}

output "url" {
  description = "The domain of the website endpoint "
  value       = aws_s3_bucket.bucket.bucket_regional_domain_name
}
