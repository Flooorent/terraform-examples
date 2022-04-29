module "passing-providers-explicitly-01-resources" {
  source = "./modules/workspace_resources"
  providers = {
    databricks = databricks.passing-providers-explicitly-01
  }

  users = local.users
}

module "passing-providers-explicitly-02-resources" {
  source = "./modules/workspace_resources"
  providers = {
    databricks = databricks.passing-providers-explicitly-02
  }

  users = local.users
}
