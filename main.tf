terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

backend "s3" {
  bucket = "demoterraformcodebuild"
  key    = "TESTCODEBUILDDEMO"
  region = "us-east-1"
  }


provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA3FLD2Z5GBJFE6QO2"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
