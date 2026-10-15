terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_object" "demo" {
  bucket  = "terraform-state-example-210007887007"
  key     = "demo/hello.txt"
  content = "Hello from Terraform"

  tags = {
    Name = "TerraformStateLab"
  }
}

