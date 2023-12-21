resource "aws_security_group" "allows_tls" {
  name                  = "batch56_allow_tls"
  description           = "Batch56 Allow TLS inbound traffic"

  ingress {
       description      = "SSH from VPC"
       from_port        = 22
       to_port          = 22
       protocol         = "tcp"
       cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
       from_port        = 0
       to_port          = 0
       protocol         = "-1"
       cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = {
      Name = "allow_tls"
    }
}