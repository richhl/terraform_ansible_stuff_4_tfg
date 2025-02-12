terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
}

data "aws_vpc" "default" {
 default = true
}

data "aws_security_group" "default" {
}

resource "aws_instance" "llm_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name                    = "llm_server_key"
  vpc_security_group_ids      = [data.aws_security_group.default.id]
  associate_public_ip_address = true
  root_block_device {
   volume_type           = "gp2"
   volume_size           = "60"
   delete_on_termination = true
  }
}
