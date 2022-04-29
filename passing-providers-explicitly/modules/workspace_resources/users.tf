resource "databricks_user" "users" {
  for_each  = toset(var.users)
  user_name = each.key
}
