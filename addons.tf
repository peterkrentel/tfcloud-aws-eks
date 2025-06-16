module "eks_blueprints_addons" {
  source  = "aws-ia/eks-blueprints-addons/aws"
  version = "1.21.0"

  cluster_name      = module.eks_cluster_id
  cluster_endpoint  = module.eks.aws_eks_cluster_endpoint
  cluster_version   = module.eks.cluster_version
  oidc_provider_arn = module.eks.eks_oidc_provider_arn

  enable_aws_load_balancer_controller = true
  aws_load_balancer_controller = {
    role_name   = "${module.eks.cluster_name}-alb-controller"
    policy_name = "${module.eks.cluster_name}-alb-controller"
  }

  create_kubernetes_resources = false

  observability_tag = null
}