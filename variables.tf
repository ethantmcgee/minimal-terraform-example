variable "vpc_name" {
    type = string
    description = "Name of the Cluster / VPC"
    nullable = false
}

variable "vpc_cidr_block" {
    type = string
    description = "CIDR Block of the created VPC"
    default = "10.0.0.0/16"
}

variable "vpc_public_subnets" {
    type = map
    description = "CIDR Block of the created VPC's Public Subnets"
    default = {
        "us-east-1a" = {
            cidr = "10.0.0.0/18"
        },
        "us-east-1b" = {
            cidr = "10.0.64.0/18"
        }
    }
}

variable "vpc_private_subnets" {
    type = map
    description = "CIDR Block of the created VPC's Private Subnets"
    default = {
        "us-east-1a" = {
            cidr = "10.0.128.0/18"
        },
        "us-east-1b" = {
            cidr = "10.0.192.0/18"
        }
    }
}