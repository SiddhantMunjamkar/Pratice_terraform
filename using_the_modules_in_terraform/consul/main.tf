# terraform {
#   backend "s3" {
#     bucket         = "siddhant-tf-state-ap-south-1"                          # ✅ This bucket MUST be created in ap-south-1
#     key            = "ap-south-1/06-organization-and-modules/consul.tfstate" # ✅ Change the key to be region-specific
#     region         = "ap-south-1"
#     dynamodb_table = "terraform-state-locking" # ✅ DynamoDB table must also be in ap-south-1
#     encrypt        = true
#     use_lockfile   = true
#   }

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 3.0"
#     }
#   }
# }

provider "aws" {
  region = "ap-south-1"
}

module "consul" {
  source  = "hashicorp/consul/aws"
  version = "0.11.0"
}
