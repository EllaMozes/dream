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
  ami                           = "ami-007855ac798b5175e"           # ubuntu
  user_data                     = <<EOF
                                  sudo apt-get update
                                  sudo apt-get install -y docker.io
                                  sudo docker pull ${var.docker_image}
                                  sudo docker run -d -p 5000:5000 ${var.docker_image}
                                  EOF

  user_data_replace_on_change   = true
}

variable "docker_image" {
  description = "Docker image name"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}
