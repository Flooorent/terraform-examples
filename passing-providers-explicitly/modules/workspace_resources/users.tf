resource "databricks_user" "unity_users" {
  for_each  = toset(var.users)
  user_name = each.key
}
