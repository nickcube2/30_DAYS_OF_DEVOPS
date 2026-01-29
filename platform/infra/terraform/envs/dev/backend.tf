terraform {
  backend "s3" {
    bucket         = "nick-devops-tfstate"
    key            = "platform/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

