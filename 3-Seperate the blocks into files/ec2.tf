# Below is the resource block which creates EC2 Instance
resource "aws_instance" "prod-instance" {
  ami           = ""
  instance_type = ""
  tags = {
    Name = ""
  }
}