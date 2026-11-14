provider "aws" {
    access_key = "AKIA4X5Z3J6YQ2V7K5G"
    secret_key = "y0uRSecr3tK3y"
    region = "us-east-2"
  
}

resource "aws_instance" "MyFirstInstance"{
    count = 3
    ami = "ami-0569217762f8e0b7a"
    instance_type = "t2.micro"


    tags = {
        Name = "MyFirstInstance-${count.index}"
    }

}