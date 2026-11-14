variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "us-east-2"
}


variable "Security_Group"{
  type = "list"
  default = ["sg-24076", "sg-90890", "sg-90890"]

}

variable "AMIS"{
  type = map
  default = {
    us-east-1= "ami-0569217762f8e0b7a"
    us-east-2= "ami-0569217762f8e0b7a"


  }
}