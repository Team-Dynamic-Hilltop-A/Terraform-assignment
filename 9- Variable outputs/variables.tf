variable "ami_id" {

    type = string
    description = "This is the ami for the instance"
    default = ""
  
}

variable "instance_type" {
    type = string
    description = "This is the type of the instance"
    default = ""
}


variable "instance_tag" {
    type = string
    description = "This is the tag for the instance"
    default = "wanda-test-instance"
}