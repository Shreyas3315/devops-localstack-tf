terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "test"
  secret_key = "test"
  s3_use_path_style = true
  skip_credentials_validation = true
  skip_metadata_api_check = true


  endpoints {
    s3 = "http://localhost:4566"
    iam = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
  }
}