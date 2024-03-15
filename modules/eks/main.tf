module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    version = "20.8.3"

    cluster_name    = "test-cluster"
    cluster_version = "1.29"

    cluster_endpoint_public_access  = true

    cluster_addons = {
        coredns = {
            most_recent = true
        }
        kube-proxy = {
            most_recent = true
        }
        vpc-cni = {
            most_recent = true
        }
    }

    vpc_id     = var.vpc
    subnet_ids = var.private_subnets

    eks_managed_node_groups = {
        example = {
            min_size     = 1
            max_size     = 1
            desired_size = 1

            instance_types = ["t3.medium"]
            capacity_type  = "SPOT"
            
            ami_type                   = "AL2_x86_64"
            platform                   = "linux"
            enable_bootstrap_user_data = true
            bootstrap_extra_args       = "--use-max-pods false"
            
            user_data_template_path = "${path.module}/user_data.tpl"
        }
    }

    enable_cluster_creator_admin_permissions = true
}