resource "aws_security_group" "roboshop" {
  name        = "roboshop"
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id

  dynamic ingress {
    for_each = var.ingress  #there you will get a variable ingress
    content {
        description      = ingress.value["description"]
        from_port        = ingress.value["from_port"]
        to_port          = ingress.value.to_port
        protocol         = ingress.value.protocol
        cidr_blocks      = ingress.value.cidr_blocks
        
            }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "roboshop"
  }
}