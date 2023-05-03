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

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "dream-instance"

  instance_type          = "t2.micro"
  key_name               = "dream-key"
  ami                    = "ami-02396cdd13e9a1257"
  user_data              = <<-EOF
                         #!/bin/bash
                         yum update -y
                         yum install -y python3
                         pip3 install flask
                         # copy your Flask app files to the instance here
                         cp app.py .
                         FLASK_APP=app.py flask run --host=0.0.0.0 --port=80
                         EOF


}