terraform {
  required_version = ">= 0.13"

  required_providers {
    aws    = ">= 3.28"
    random = "~> 2"
    null   = "~> 2"
  }

  backend "s3" {
    bucket  = "bucket-s3-name"
    key     = "<name>.tfstate"
    encrypt = true
    region  = "us-east-1" //cloudfront certificate are allowed only in us-east-1
    profile = "default"
  }
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile

  # Make it faster by skipping something
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true

}
