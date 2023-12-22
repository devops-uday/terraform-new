terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}


terraform {
   
  backend "s3" {
    bucket = "roboshop-remote-state-1"
    key = "foreach-demo"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking"
                }

          }


provider "aws" {
  # Configuration options
  # you can provide access key and security key here but security problem
  region = "us-east-1"
}

