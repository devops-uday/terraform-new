variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instances" {
  type = map 
  default = {
    MongoDB = "t3.medium"
    MySQL = "t3.medium"
    Redis = "t2.micro"
    RabbitMQ = "t2.micro"
    Catalogue = "t2.micro"
    User = "t2.micro"
    Cart = "t2.micro"
    Shipping = "t2.micro"
    Payment = "t2.micro"
    Web = "t2.micro"
  }
}

variable "zone_id" {
  default = "Z0872289TGI04OU3JHBK"
}

variable "domain" {
  default = "devopsuday.online"
}

variable "sg_name" {
    default = "allow-all"
}

variable "sg_cidr" {
  default = ["0.0.0.0/0"]
}

