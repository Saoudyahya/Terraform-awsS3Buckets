terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Define the AWS provider
provider "aws" {
  region = "eu-central-1"  # Change this to your desired region
}

resource "aws_s3_bucket" "exadnnsmple" {
  bucket = "my-tf-test-buckets"
  force_destroy = true
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}