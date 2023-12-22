variable "ami_id" {
  default = "ami-03265a0778a880afb"
}

variable "instance_names" {
  type = list
  default = ["MongoDB", "Cart", "Catalogue", "User", "Redis", "RabbitMQ", "MySQL", "Shipping", "Payment", "Web"]
}

variable "zone_id" {
  default = "Z0872289TGI04OU3JHBK"
}

variable "domain" {
  default = "devopsuday.online"
}