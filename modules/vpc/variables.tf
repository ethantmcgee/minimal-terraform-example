variable "vpc_name" {
    type = string
    description = "Name of the VPC in which the EKS cluster will be created (i.e. qa, prod)"
    nullable = false
}

variable "vpc_cidr_block" {
    type = string
    description = "CIDR Block of the created VPC"
    nullable = false
}

variable "vpc_public_subnet_cidr_blocks" {
    type = map
    description = "CIDR Block of the created VPC's Public Subnets"
    nullable = false
}

variable "vpc_private_subnet_cidr_blocks" {
    type = map
    description = "CIDR Block of the created VPC's Private Subnets"
    nullable = false
}