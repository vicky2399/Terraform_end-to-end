module "my_vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
  vpc_cidr     = var.vpc_cidr
  public_cidrs = var.public_cidrs
  azs          = var.azs
}

module "my_ec2" {
  source         = "./modules/ec2"
  project_name   = var.project_name
  instance_count = var.instance_count
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  subnet_ids     = module.my_vpc.public_subnet_ids
  sg_id          = module.my_vpc.security_group_id
}
