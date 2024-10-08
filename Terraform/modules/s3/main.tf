resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags = {
    Name = "S3 Bucket for Docker Images"
  }
}

output "bucket_name" {
  value = "${aws_s3_bucket.bucket.bucket}"
}
