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
  cluster_id      =  data.digitalocean_database_cluster.cluster.id
  cluster_name    = "cluster1"
  cluster_engine  = "pg"
  cluster_region  = "sfo2"
  cluster_size    = "db-s-1vcpu-1gb"
  cluster_version = "11"
  cluster_nodecount  = 1
  database_name   = "ximedbexample"
  do_token        = var.do_token
  project_name    = "Test"
}


# resource "random_pet" "name" {
#   length   = 1
# }