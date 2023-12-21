resource "aws_instance" "app" {
  ami           = "ami-06911ef5687b5d1ad"           # argument
  instance_type = "t3.micro"

  tags = {
    Name = "DevOps-With-AWS-LabInstance"
  }
}

output "instance_dns" {
    value = aws_instance.app.private_dns                                      # attributes
}


output "instance_arn" {
    value = aws_instance.app.arn                                   # attributes
}