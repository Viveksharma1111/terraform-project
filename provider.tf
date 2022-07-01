#this is a provider configuration file.
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secrate_key
  region     = "ap-south-1"
}