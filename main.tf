# terraform {
#     required_providers {
#         digitalocean = {
#             source  = "digitalocean/digitalocean"
#             version = "~> 2.0"
#     }
#   }
# }


provider "digitalocean" {
  token = var.do_token
}




resource "digitalocean_database_db" "database" {
  cluster_id = data.digitalocean_database_cluster.developer-productivity-cluster.id
  name       = "database-${random_pet.name.id}"
}

# resource "digitalocean_database_cluster" "developer-productivity-cluster" {
#   name       = "example-developer-productivity-cluster"
#   engine     = "pg"
#   version    = "11"
#   size       = "db-s-1vcpu-1gb"
#   region     = "sfo2"
#   node_count = 1
# }

resource "random_pet" "name" {
  length   = 1
}

data "digitalocean_database_cluster" "developer-productivity-cluster" {
  name = "example-developer-productivity-cluster"
}
# output "database_output" {
#   value = data.digitalocean_database_cluster.developer-productivity-cluster.uri
#   sensitive = false
# }

# output "droplet_limit" {
#     value = data.digitalocean_account.account_info.droplet_limit
# }
