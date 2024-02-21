terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATCKARQYVEN5V2KPJ"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
terraform {
  backend "s3" {
    bucket = "s3://codebuilds3test/"
    key    = "s3://codebuilds3test/codebuilds3testfolder"
    region = "us-east-1"
  }
}

