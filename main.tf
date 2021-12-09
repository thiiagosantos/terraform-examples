terraform {
    required_version = "1.0.11"
    required_providers {
      aws = {
          source    = "hashicorp/aws"
          version   = "3.68.0"
      }
    }
}

provider "aws" {
  region    = "us-east-1"
  profile   = "personal-account" # qual profile de conexão será usado
}

resource "aws_s3_bucket" "my-test-bucket-tls" {
  bucket = "my-test-bucket-tls-1"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
