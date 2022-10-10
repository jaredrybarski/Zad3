# Bestpractice in our case would be to used named AWS profiles

provider "aws" {
  region     = "eu-west-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
