output "endpoint" {
  value = aws_redshiftserverless_workgroup.this.endpoint
}

output "namespace" {
  value = aws_redshiftserverless_namespace.this.namespace_name
}

output "workgroup" {
  value = aws_redshiftserverless_workgroup.this.workgroup_name
}
