provider "aws" {
  // Network account
  region     = "ap-south-1"
  access_key = var.access
  secret_key = var.secret
}

resource "aws_vpc" "vpc" {
  cidr_block       = "10.8.0.0/23"

  tags = {
    Name = " local terragrunt call works !!!!"
  }
}

variable "access" {
  description = ""
  type        = string
  default     = ""
}

variable "secret" {
  description = ""
  type        = string
  default     = ""
}