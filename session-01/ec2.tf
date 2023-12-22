resource "aws_instance" "my-wish" {
    ami = var.ami_id #devops practice in us-east-1
    instance_type = var.instance_type
    security_groups = [aws_security_group.allow_all.name] 
    #type.name-of-the-security-group.name, here name is var.sg_name, since list [] 
    
    # tags = {
    #     Name = "MongoDB"
    #     Environment = "DEV"
    #     Terraform = "true"
    #     Project = "Roboshop"
    #     Component = "MongoDB"
    # }
    tags = var.tags
}