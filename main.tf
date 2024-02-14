terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

provider "aws" {
  # Configuration options
aws_access_key_id = "AKIAQ3EGUOULI47244H2"
aws_secret_access_key = "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"
region = "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
