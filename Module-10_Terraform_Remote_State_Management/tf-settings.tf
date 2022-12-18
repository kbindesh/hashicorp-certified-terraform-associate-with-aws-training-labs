terraform {  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.47.0"
    }
  }
  backend "s3" {
    bucket = "novatfbackendbucket"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

# Provider Block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
