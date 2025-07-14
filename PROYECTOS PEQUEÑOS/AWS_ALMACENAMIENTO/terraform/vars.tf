variable "aws_region" { }
variable "vpc_cidr" {}
variable "private_subnet_cidrs" {
  type = list(string)
}
variable "azs" {
  type = list(string)
}
variable "namespace_name" {
  type = string
}

variable "workgroup_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_user_password" {
  type      = string
  sensitive = true
}
variable "password" {
  type      = string
  sensitive = true
}