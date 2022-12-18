# Resource Block
resource "aws_instance" "web_server" {
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "Nova-WebServer"
  }
}
