output "instance_public_ip" {
  value = module.ec2-instance.instance_public_ip
}

output "s3-bucket_name" {
  value = module.s3-bucket.bucket_name
}
