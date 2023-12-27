resource "aws_instance" "web" {
  count                  = 3

  ami                    =  data.aws_ami.ami.id                                # argument
  instance_type          = "t3.micro"

    tags = {
             Name        = "AWSCloud-LabInstance-${count.index+1}"
    }
}
