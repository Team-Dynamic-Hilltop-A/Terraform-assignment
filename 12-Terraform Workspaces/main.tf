resource "aws_instance" "prod-instance" {
    ami = var.ami_id
    instance_type = var.instance_type

    tags = {
      Name = format ("%s_%s", var.instance_name, terraform.workspace)
}

}

resource "aws_s3_bucket" "hilltop-s3-aws_s3_bucket" {

    bucket = "hilltop-resources-${terraform.workspace}"

    tags = {
        Name = format ("%s-%s", var.bucket_name, terraform.workspace)
    }
  
}