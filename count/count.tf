resource "aws_instance" "conditions" {
  count = 10  
  ami = var.ami_id
  instance_type = var.instance_names[count.index] == "MongoDB" || var.instance_names[count.index] == "MySQL" ? "t3.medium" : "t2.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "record" {
  count = 10
  name = "${var.instance_names[count.index]}.${var.domain}" #interpolation
  #name = "${var.instance_names[count.index]}.devopsuday.online"
  zone_id = var.zone_id
  type = "A"
  ttl = 1
  records = [aws_instance.conditions[count.index].private_ip]
}
# MongoDB Cart Catalogue User Redis RabbitMQ MySQL Shipping Payment Web 

resource "aws_key_pair" "deployer" {
  key_name = "devops-pub"
  public_key = file("${path.module}/devops.pub")
}

resource "aws_instance" "file-function" {
  ami = var.ami_id
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name

}