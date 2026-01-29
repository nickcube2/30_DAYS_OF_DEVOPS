terraform {
  backend "s3" {
    bucket         = "nick-devops-tfstate"
    key            = "test/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

