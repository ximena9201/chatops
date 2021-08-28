# terraform {
#     required_providers {
#         digitalocean = {
#             source  = "digitalocean/digitalocean"
#             version = "~> 2.0"
#     }
#   }
# }
variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}




resource "digitalocean_database_db" "database-example" {
  cluster_id = digitalocean_database_cluster.developer-productivity-cluster.id
  name       = "foobar3"
}

resource "digitalocean_database_cluster" "developer-productivity-cluster" {
  name       = "example-developer-productivity-cluster"
  engine     = "pg"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = "sfo2"
  node_count = 1
}



# data "digitalocean_account" "account_info" {}

# output "droplet_limit" {
#     value = data.digitalocean_account.account_info.droplet_limit
# }
