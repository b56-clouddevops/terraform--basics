resource "aws_instance" "app" {
  ami                    = "ami-06911ef5687b5d1ad"                                     # argument
  instance_type          = "t2.micro"
}