resource "aws_instance" "app" {
  ami           = "ami-06911ef5687b5d1ad"
  instance_type = "t3.micro"

  tags = {
    Name = "DevOps-With-AWS-LabInstance"
  }
}