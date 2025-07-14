variable "db_name" {
  type    = string
}

variable "username" {
  type    = string
  default = "postgres"
}

variable "password" {
  type      = string
  sensitive = true
}

variable "subnet_ids" {
  type = list(string)
}

variable "security_group_id" {
  type = string
}
