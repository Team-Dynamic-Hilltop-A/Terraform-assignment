variable "ami_id" {
    type = string
    description = "ami id for the instance used"
    default = "ami-0895022f3dac85884"
}

variable "instance_type" {
    type = string
    description = "the type of ec2 instance used"
    default = "t2.micro"
}

variable "instance_name" {
    type = string
    description = "This is the tag fof the subnet"
    default = "prod_instance"
}

variable "bucket_name" {
    type = string
    description = "This the bucket name"
    default = "hilltop-resources-"
}