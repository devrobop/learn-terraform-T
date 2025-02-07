resource "null_resource" "test" {}

terraform {
  backend "s3" {
      bucket  =  "devrobop-s5"
      key     = "test/terraform.tfstate"
      region  = "us-east-1"
  }
}