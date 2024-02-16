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
  access_key = "AKIAQ3EGUOULI47244H2"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
