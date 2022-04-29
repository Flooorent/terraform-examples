output "databricks_host" {
  value       = databricks_mws_workspaces.this.workspace_url
  description = "Host to be used by other modules"
}
