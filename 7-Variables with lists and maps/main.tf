# Below is the resource block which creates a prod Linux EC2 Instance
resource "aws_instance" "prod-instance" {
  ami           = var.ami_ids["linux"]
  instance_type = var.instance_type[0]
  tags = {
    Name = var.ec2_name_tag[0]
  }
}

# Below is the resource block which creates a Dev Ubuntu EC2 Instance
resource "aws_instance" "dev-instance" {
  ami           = var.ami_ids["ubuntu"]
  instance_type = var.instance_type[1]
  tags = {
    Name = var.ec2_name_tag[1]
  }
}