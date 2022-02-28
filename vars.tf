#variable "AWS_REGION" {
  #type    = string
  #fault = "eu-west-2"
#}

#variable "AWS_PROFILE" {
 #type    = string
  #default = "default"
#}

variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "ami-08edbb0e85d6a0a07" # EU Ireland
    eu-west-2 = "ami-0fdf70ed5c34c5f52" # EU London
    us-east-1 = "ami-083654bd07b5da81d" # US N.virginia
  }
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
