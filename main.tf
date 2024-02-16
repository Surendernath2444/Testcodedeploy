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
  access_key = "AKIAQ3EGUOULGSJUXYRX"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
