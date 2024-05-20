
locals {
  prod_tag = {
    Project = "Migration project"
    Team = "devops-team"
    Env = "prod-environment"
  }

  dev_tag = {
    Project = "Migration project"
    Team = "devops-team"
    Env = "dev-environment"
  } 

  test_tag = {
    Project = "Migration project"
    Teams = "devops-team"
    Env = "test-environment"
  } 

}

#Below is teh resource block to create EC2 instance with prod tags
resource "aws_instance" "prod-instance" {

    ami = var.ami_id
    instance_type = var.instance_type

    tags = local.prod_tag
  
}

#Below is teh resource block to create EC2 instance with Dev tags
resource "aws_instance" "dev-instance" {

    ami = var.ami_id
    instance_type = var.instance_type

    tags = local.dev_tag
  
}