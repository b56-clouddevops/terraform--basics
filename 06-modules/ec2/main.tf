resource "aws_instance" "app" {
  ami                    = "ami-06911ef5687b5d1ad"                                     # argument
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]

  tags = {
    Name = "EC2-From-Modules"
  }
}

#  Declare that Input that you need to consume as variable
variable "sg" {}


output "public_ip" {
    value = aws_instance.app.public_ip
}
