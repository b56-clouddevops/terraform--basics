resource "aws_instance" "web" {
  ami                    =  data.aws_ami.ami.id                                # argument
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allows_tls.id]

    tags = {
             Name        = "AWS-LabInstance"
    }
}

