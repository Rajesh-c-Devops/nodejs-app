resource "aws_instance" "nginx_instance" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"             
  key_name      = "key-pair" 

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install docker -y
              service docker start
              usermod -a -G docker ec2-user
              yum install git -y
              
              # Install Nginx
              amazon-linux-extras install nginx1 -y
              systemctl start nginx
              systemctl enable nginx

              # Clean up default Nginx page
              rm /usr/share/nginx/html/*

              # Add a simple index.html page
              echo "<h1>App is running!</h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = var.instance_name
  }
}

output "instance_public_ip" {
  value = aws_instance.nginx_instance.public_ip
}
