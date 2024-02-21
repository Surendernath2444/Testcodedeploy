terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "codebuilds3test"
    key    = "path/to/terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATCKARQYVEN5V2KPJ"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

