# variable "AWS_ACCESS_KEY_ID" {
#     type        = string
#     description = "Access Key"}

# variable "AWS_SECRET_ACCESS_KEY" {
#     type        = string
#     description = "Secret Key"}

variable "tagName" {
    type        = string
    description = "Tag Name"
}

variable "tagEnv" {
    type        = string
    description = " Tag Environment"
}

variable "bucket" {
    type        = string
    description = "Bucket Name"
}

variable "acl" {
    type        = string
    description = "ACL"
}
