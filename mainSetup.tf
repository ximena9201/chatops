module "databaseCluster" {
  source          = "./modules/databaseCluster"
  cluster_name    = "xime-cluster2"
  cluster_engine  = "pg"
  cluster_region  = "sfo2"
  cluster_size    = "db-s-1vcpu-1gb"
  cluster_version = "11"
  cluster_nodecount  = 1
  database_name   = random_pet.name.id
  do_token        = var.do_token
  project_name    = "Test"
}

module "database" {
  source          = "./modules/database"
  cluster_name    = data.cluster_name
  cluster_engine  = "pg"
  cluster_region  = "sfo2"
  cluster_size    = "db-s-1vcpu-1gb"
  cluster_version = "11"
  cluster_nodecount  = 1
  database_name   = "ximedbexample"
  do_token        = var.do_token
  project_name    = "Test"
}


resource "random_pet" "name" {
  length   = 1
}