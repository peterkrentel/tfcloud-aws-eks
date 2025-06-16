addon_context = {
  eks_cluster_id           = module.eks.cluster_name
  aws_eks_cluster_endpoint = module.eks.cluster_endpoint
  eks_oidc_provider_arn    = module.eks.oidc_provider_arn
}

eks_cluster_version = module.eks.cluster_version   # or a literal "1.30"
