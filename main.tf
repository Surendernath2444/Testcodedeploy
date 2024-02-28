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
terraform {
  backend "s3"{
    bucket ="testterraformcod"
    region = "us-east-1"
    key="terraform.tfstate"
  }
}  


