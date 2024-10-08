terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "ec2" {
  source        = "./modules/ec2"
  instance_name = var.instance_name
  region        = var.region
}

module "s3" {
  source        = "./modules/s3"
  bucket_name   = var.bucket_name
  region        = var.region
}
