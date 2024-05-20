# Below is the resource block which creates EC2 Instance
resource "aws_instance" "prod-instance" {
  ami           = ""
  instance_type = ""
  tags = {
    Name = ""
  }
}


# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region = ""
  access_key = ""
  secret_key = ""
}