resource "aws_security_group" "Web-sg" {
  name        = "Python-app-Security-Group"
  description = "Open 22,80"
  vpc_id      = aws_vpc.python_vpc.id

  # Define a single ingress rule to allow traffic on all specified ports
  ingress = [
    for port in [22, 80] : {
      description      = "TLS from VPC"
      from_port        = port
      to_port          = port
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Python-app-sg"
  }
}



