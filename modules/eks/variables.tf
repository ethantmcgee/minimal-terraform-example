variable "cluster_name" {
    type = string
    description = "Name of the cluster"
    nullable = false
}

variable "vpc" {
    type = string
    description = "AWS VPC Object"
    nullable = false
}

variable "private_subnets" {
    type = list(string)
    description = "AWS Private Subnet Objects"
    nullable = false
}