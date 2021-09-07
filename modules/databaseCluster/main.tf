
data "digitalocean_project" "development"{
  name = var.project_name
}

resource "digitalocean_database_db" "database" {
  # count = 1
  cluster_id = digitalocean_database_cluster.cluster.id
  name       = var.database_name
}

# resource "digitalocean_database_db" "database1" {
#   cluster_id = digitalocean_database_cluster.cluster.id
#   name       = "db-dev-${random_pet.name.id}"

# }


resource "digitalocean_database_cluster" "cluster" {
  name       = var.cluster_name
  engine     = var.cluster_engine
  version    = var.cluster_version
  size       = var.cluster_size
  region     = var.cluster_region
  node_count = var.cluster_nodecount
}

# resource "random_pet" "name" {
#   length   = 1
# }

# data "digitalocean_database_cluster" "cluster" {
#   name = "xime-cluster"
# }

resource "digitalocean_project_resources" "barfoo" {
  project = data.digitalocean_project.development.id
  resources = [
    digitalocean_database_cluster.cluster.urn
  ]
}

# terraform {
#     required_providers {
#         digitalocean = {
#             source  = "digitalocean/digitalocean"
#             version = "~> 2.0"
#     }
#   }
# }