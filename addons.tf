module "load_balancer_addon" {
  source = "git::https://github.com/aws-samples/eks-workshop-v2.git//manifests/modules/exposing/load-balancer/.workshop/terraform?ref=stable"

  cluster_name = module.eks.cluster_name
  region       = var.region
}
