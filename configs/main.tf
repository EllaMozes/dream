terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "dream"
}

resource "aws_instance" "dream_instance" {
  instance_type                 = "t2.micro"
  key_name                      = "dream-key"
  ami                           = "ami-02561dd2ff15da845"           # "ami-02396cdd13e9a1257"

}
