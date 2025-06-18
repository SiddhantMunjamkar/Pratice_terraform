provider "aws" {
  region = "ap-south-1"


}

resource "aws_instance" "instance_1" {
  ami           = "ami-0e670eb768a5fc3d4" # Ubuntu Server 22.04 LTS for ap-south-1
  instance_type = "t2.micro"

  tags = {
    Name = "instance_1"
  }

}
