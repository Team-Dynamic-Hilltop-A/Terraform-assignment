# Below is the resource block which creates EC2 Instance
resource "aws_instance" "prod-instance" {
  ami           = "ami-0d3a2960fcac852bc"
  instance_type = "t3.micro"
  tags = {
    Name = "prod-instance"
  }
}


# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region     = "eu-north-1"
  access_key = ""
  secret_key = ""
}
