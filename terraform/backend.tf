terraform {
  backend "s3" {
    bucket = "my-company-terraform-state-prod-123456789"
    key    = "aws-secrets/terraform.tfstate"
    region = "ap-south-1"

    encrypt = true
  }
}
