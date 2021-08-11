# terraform {
#     required_providers {
#         digitalocean = {
#             source  = "digitalocean/digitalocean"
#             version = "~> 2.0"
#     }
#   }
# }

provider "digitalocean" {
    token = "248610ca749fafda2605e566e1f2022d8d18815204cf1c69543585ba1fe997bc"
}

data "digitalocean_account" "account_info" {}

output "droplet_limit" {
    value = data.digitalocean_account.account_info.droplet_limit
}