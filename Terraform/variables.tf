variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default = "docker-images"
}
