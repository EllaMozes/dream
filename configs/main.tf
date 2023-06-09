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
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "dream_instance" {
  instance_type                 = "t2.micro"
  key_name                      = "dream-key"
  ami                           = "ami-007855ac798b5175e"           
  user_data_base64              = "IyEvYmluL2Jhc2gKYXB0LWdldCB1cGRhdGUKYXB0LWdldCBpbnN0YWxsIC15IGRvY2tlci5pbwpkb2NrZXIgcHVsbCBlbW96ZXMvZHJlYW0KZG9ja2VyIHJ1biAtZCAtcCA1MDAwOjUwMDAgZW1vemVzL2RyZWFt"
  user_data_replace_on_change   = true
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}
