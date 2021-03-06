terraform {
  backend "s3" {
    profile        = "alx365"
    bucket         = "alx365-tf-state"
    key            = "mc-static.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}

provider "aws" {
  profile = var.aws-profile
  region  = var.aws-region
  version = "~> 2.43"
}

provider "archive" {
  version = "~> 1.0"
}
