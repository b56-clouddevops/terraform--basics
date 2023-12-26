resource "aws_instance" "app" {
  ami                    = "ami-06911ef5687b5d1ad"                                     # argument
  instance_type          = "t2.micro"
  vpc_security_group_ids = [var.sg]                                                    # Start using the variable

  tags = {
    Name = "EC2-From-Modules"
  }

# Declaring the resource with in the resource!!! 
# # Demo On Local Provisioner 
#   provisioner "local-exec" {
#     command = "echo ${self.private_ip} >> /home/centos/local_private_ips.txt"
#   }
}

# Step 3:  Declare that Input that you need to consume as variable
variable "sg" {}


output "public_ip" {
    value = aws_instance.app.public_ip
}
