# Below is the resource block which creates EC2 Instance
resource "aws_instance" "prod-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.ec2_name_tag
  }
}