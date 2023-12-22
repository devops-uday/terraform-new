variable "ami_id" {
    type = string #this is the data type
    default = "ami-03265a0778a880afb" #this is the default value
}

variable "instance_type" {
    type = string #terraform understands itself the type not required to provide
    default = "t2.micro"
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_cidr" {
    type = list 
    default = ["0.0.0.0/0"] #list so started with brackets
}

variable "tags" {
    type = map 
    default = {
        Name = "MongoDB"
        Environment = "DEV"
        Terraform = "true"
        Project = "Roboshop"
        Component = "MongoDB"
    }
}