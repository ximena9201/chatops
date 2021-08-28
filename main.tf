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




resource "digitalocean_database_db" "database-example" {
  cluster_id = digitalocean_database_cluster.developer-productivity-cluster.id
  name       = "${random_string}-database"
}

resource "digitalocean_database_cluster" "developer-productivity-cluster" {
  name       = "example-developer-productivity-cluster"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = "sfo2"
  node_count = 1
}

resource "random_string" "random" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

# data "digitalocean_account" "account_info" {}

# output "droplet_limit" {
#     value = data.digitalocean_account.account_info.droplet_limit
# }
