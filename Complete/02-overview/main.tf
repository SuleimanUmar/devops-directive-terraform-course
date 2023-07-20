terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0915ee24eb12cb61b" # Ubuntu 20.04 LTS // eu-central-1
  instance_type = "t2.micro"
}
