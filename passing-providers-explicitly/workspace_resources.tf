module "passing-providers-explicitly-01-resources" {
  source = "./modules/workspace_resources"
  providers = {
    databricks = databricks.passing-providers-explicitly-01
  }
  depends_on = [module.eu-west-1-workspaces]

  users = local.users
}

module "passing-providers-explicitly-02-resources" {
  source = "./modules/workspace_resources"
  providers = {
    databricks = databricks.passing-providers-explicitly-02
  }
  depends_on = [module.eu-west-1-workspaces]

  users = local.users
}
