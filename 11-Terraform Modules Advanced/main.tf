#Creating VPC using VPC module

module "vpc" {
    source = "../11-Terraform Modules Advanced/modules/vpc"
    vpc_name = var.vpc_name
    vpc_cidr_block = var.vpc_cidr_block
    
}


#Creating S3 bucket using S3 module

module "mys3" {
  source      = "../11-Terraform Modules Advanced/modules/s3"
  bucket_name = var.bucket_name
}


# Creating Prod EC2 instance with EC2 Module
module "prod-instance" {
  source = "../11-Terraform Modules Advanced/modules/ec2"
  ami_id        = var.ami_id
  ec2_name      = var.ec2_name
  instance_type = var.instance_type
}
