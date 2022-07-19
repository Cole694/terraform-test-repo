variable "instance_type" {
  type = map(any)
  default = {
    machine1 = "t2.micro"
    machine2 = "t2.medium"
    machine3 = "t2.macro"
  }
}

variable "elb_name" {
  type    = list(any)
  default = ["dev-lb"]
}

variable "az" {
  type = list(any)
}

variable "timeout" {
  type = number
}

variable "is_test" {}

variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  type = map(any)
  default = {
    us-east-1 = "ami-0cff7528ff583bf9a"
    us-west-1 = "ami-0825c6b3598e9754d"
    us-west-2 = "ami-098e42ae54c764c35"
  }
}

variable "tags" {
  type    = list(any)
  default = ["ec2-nr1", "ec2-nr2"]
}
/*
variable "sg_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [8200, 8201, 8300, 9200, 9500]
}*/