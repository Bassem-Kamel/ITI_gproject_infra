
module "network" {
  source           = "./network"
  net_project_id   = var.project_id
  net_vpc_name     = var.vpc_name
  net_region       = var.region
  net_bastion_cidr = var.bastion_cidr
  net_cluster_cidr = var.cluster_cidr


}