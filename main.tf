provider "aws" {
    region = "eu-central-1"

    # to authenticate to AWS, set environment variables
    # AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
}

terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}