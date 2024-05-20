# Below is the variables blocks
variable "ec2_name_tag" {
  default = ["prod-instance", "dev-instance", "test-instance"]
}

variable "instance_type" {
                #   0          1          2         3
  default = ["t2.medium", "t2.micro", "t2.small",  ]
  type    = list(string)
}
variable "ami_ids" {
  default = {
    linux  = "ami-XXXXXXXXX",
    ubuntu = "ami-XXXXXXXXX"
  }
}
