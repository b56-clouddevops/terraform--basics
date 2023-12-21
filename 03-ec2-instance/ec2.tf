resource "aws_instance" "app" {
  ami                    = "ami-06911ef5687b5d1ad"                                     # argument
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
             Name        = "DevOps-With-AWS-LabInstance"
    }
}