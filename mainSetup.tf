# module "databaseCluster" {
#   source          = "./modules/databaseCluster"
#   cluster_name    = "cluster1"
#   cluster_engine  = "pg"
#   cluster_region  = "sfo2"
#   cluster_size    = "db-s-1vcpu-1gb"
#   cluster_version = "11"
#   cluster_nodecount  = 1
#   database_name   = "ximedb2"
#   do_token        = var.do_token
#   project_name    = "Test"
# }

module "database" {
  source          = "./modules/database"
  cluster_name    = module.databaseCluster.cluster_name
  cluster_engine  = module.databaseCluster.cluster_engine
  cluster_region  = module.databaseCluster.cluster_region
  cluster_size    = module.databaseCluster.cluster_size
  cluster_version = module.databaseCluster.cluster_version
  cluster_nodecount  = module.databaseCluster.cluster_nodecount
  database_name   = "ximedbexample"
  do_token        = var.do_token
  project_name    = "Test"
}


# resource "random_pet" "name" {
#   length   = 1
# }