provider "aws" {
  region = "us-east-1"
  max_retries = 5
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

