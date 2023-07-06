terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
}

terraform {
  backend "s3" {
  bucket = "tf-script-al"
  key = "dev/terraform.tfstate"
  region = "ap-south-1"
  }
}