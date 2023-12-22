variable "instance_name" {
  default = "cart"
}

variable "ami_id" {
    type = string #this is the data type
    default = "ami-03265a0778a880afb" #this is the default value
}

variable "instance_type" {
    type = string #terraform understands itself the type not required to provide
    default = "t2.micro"
}