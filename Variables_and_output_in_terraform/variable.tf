# General Variable

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "ap-south-1"

}

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-0e670eb768a5fc3d4" # Ubuntu Server 22.04 LTS for ap-south-1


}

variable "instance_type" {
  description = "Type of ec2 instance to use"
  type        = string
  default     = "t2.micro"

}

variable "bucket_prefix" {
  description = "Prefix for the S3 bucket"
  type        = string
}

variable "domain" {
  description = "Domain for website"
  type        = string

}

variable "db_name" {
  description = "Name of DB"
  type        = string

}

variable "db_user" {
  description = "Username for DB"
  type        = string
}

variable "db_pass" {
  description = "Password for DB"
  type        = string
  sensitive   = true

}
