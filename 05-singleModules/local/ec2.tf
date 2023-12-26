resource "aws_instance" "app" {
  ami                    = "ami-06911ef5687b5d1ad"                                     # argument
  instance_type          = "t2.micro"
}

output "public_ip" {
    value = aws_instance.app.public_ip
}