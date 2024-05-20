resource "aws_instance" "prod-instance" {

    ami = var.ami_id
    instance_type = var.instance_type

    tags = {
      Name = var.instance_tag
    }
  
}