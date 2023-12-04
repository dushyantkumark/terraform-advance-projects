terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }

  # creating backend infra for state management
  backend "s3" {
    bucket         = "s3-state-backend-12-2023"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "dynamo-state-loking-12-2023"
  }
}
