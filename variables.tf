variable "project_name" {}
variable "vpc_cidr" {}
variable "public_cidrs" { type = list(string) }
variable "azs" { type = list(string) }
variable "instance_count" {}
variable "instance_type" {}
variable "ami_id" {}
