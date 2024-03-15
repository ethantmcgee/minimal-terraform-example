module "vpc" {
    source = "./modules/vpc"

    vpc_name                       = var.vpc_name
    vpc_cidr_block                 = var.vpc_cidr_block
    vpc_public_subnet_cidr_blocks  = var.vpc_public_subnets
    vpc_private_subnet_cidr_blocks = var.vpc_private_subnets
}

module "eks" {
    source = "./modules/eks"

    cluster_name    = var.vpc_name
    vpc             = module.vpc.vpc
    private_subnets = module.vpc.private_subnets
}