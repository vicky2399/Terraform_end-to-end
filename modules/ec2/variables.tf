variable "project_name" {}
variable "instance_count" {}
variable "instance_type" {}
variable "ami_id" {}
variable "subnet_ids" { type = list(string) }
variable "sg_id" {}
