resource "aws_instance" "MyFirstInstance"{
    ami = "ami-0569217762f8e0b7a"
    instance_type = "t2.micro"


    tags = {
        Name = "demoinstance"
    }

    security_groups = "${var.Security_Group}"

}