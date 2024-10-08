terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "ec2-instances" {
  source        = "./modules/ec2"
  instance_name = var.instance_name
  region        = var.region
}

module "s3-bucket" {
  source        = "./modules/s3"
  bucket_name   = var.bucket_name
  region        = var.region
}
