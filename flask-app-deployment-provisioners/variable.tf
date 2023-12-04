variable "aws_region" {
  description = "provide your suitable region, example: ap-south-1, us-east-1"
}

variable "ami_id" {
  description = "provide ami id,example: ubuntu, amazonlinux, redhat "
}

variable "instance_type" {
  description = "provide instance type, example: t2.micro, t2.medium, depending on use case"
}

variable "instance_name" {
  description = "provide instance name, example: dev-server"
}

variable "key_pair" {
  description = "provide key pair name for connection"
}

variable "state_table_name" {
  description = "provide dynamo-db table name for terraform state loking"
}

variable "s3_bucket_name" {
  description = "provide s3 bucket name for terraform state management"
}

