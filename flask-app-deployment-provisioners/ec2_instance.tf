resource "aws_instance" "py_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.Web-sg.id]
  subnet_id              = aws_subnet.subnet_1.id
  key_name               = var.key_pair
  tags = {
    Name = var.instance_name
  }

  #disable_api_termination = true
  root_block_device {
    encrypted = true
  }



  # connect to instance
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("./ubuntu_key.pem")
    host        = self.public_ip
  }

  # File provisioner to copy a file from local to the remote EC2 instance
  provisioner "file" {
    source      = "app.py"              # Replace with the path to your local file
    destination = "/home/ubuntu/app.py" # Replace with the path on the remote instance
  }

  # The remote-exec provisioner invokes a script on a remote resource after it is created.
  provisioner "remote-exec" {
    inline = [
      "echo 'hello from the remote instance'",
      "sudo apt update -y ",
      "sudo apt-get install -y python3-pip",
      "cd /home/ubuntu",
      "sudo pip3 install flask",
      "sudo python3 app.py &"
    ]
  }
}
