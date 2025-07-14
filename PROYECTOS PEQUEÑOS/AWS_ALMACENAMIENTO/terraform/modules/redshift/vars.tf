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

variable "base_capacity" {
  type    = number
  default = 32
}

variable "subnet_ids" {
  type = list(string)
}

variable "security_group_ids" {
  type = list(string)
}
