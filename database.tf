module "database" {
  source          = "./modules/database"
  cluster_name    = "xime-cluster2"
  database_name   = random_pet.name.id
  do_token        = var.do_token
  project_name    = "Test"
}




resource "random_pet" "name" {
  length   = 1
}