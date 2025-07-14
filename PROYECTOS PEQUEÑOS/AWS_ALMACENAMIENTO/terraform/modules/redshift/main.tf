resource "aws_redshiftserverless_namespace" "this" {
  namespace_name       = var.namespace_name
  admin_username       = var.admin_username
  admin_user_password  = var.admin_user_password
}

resource "aws_redshiftserverless_workgroup" "this" {
  workgroup_name       = var.workgroup_name
  namespace_name       = aws_redshiftserverless_namespace.this.namespace_name
  publicly_accessible  = true
  base_capacity        = var.base_capacity
  subnet_ids           = var.subnet_ids
  security_group_ids   = var.security_group_ids
}