resource "aws_instance" "web" {
  ami                    =  data.aws_ami.ami.id                                # argument
  instance_type          = "t3.micro"

    tags = {
             Name        = "AWSCloud-LabInstance"
    }
}

