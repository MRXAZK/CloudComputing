resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow http inbound traffic"
  vpc_id = "vpc-092d80fe54f5ced9b"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id = "vpc-092d80fe54f5ced9b"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "myweb" {
  ami           = "ami-0e763a959ec839f5e"
  instance_type = "t2.micro"
  
  tags = {
    Name = "MRXAZK"
  }

  user_data = "${file("init-script.sh")}"
  key_name = "mrxazk_keypair"
  security_groups = [ "${aws_security_group.allow_http.name}", "${aws_security_group.allow_ssh.name}" ] 
}