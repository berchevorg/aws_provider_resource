terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Owner = "Georgiman"
    }
  }
}

resource "aws_vpc" "georgiman_vpc" {
  cidr_block           = "16.0.0.0/16"
  enable_dns_hostnames = true
}

