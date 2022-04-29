locals {
  eu-west-1-workspaces = {
    "passing-providers-explicitly-01" = {
      cidr_block = "10.4.0.0/16"
    },
    "passing-providers-explicitly-02" = {
      cidr_block = "10.5.0.0/16"
    },
  }
}

module "eu-west-1-workspaces" {
  for_each = local.eu-west-1-workspaces
  source   = "./modules/databricks_workspace"
  providers = {
    databricks.mws = databricks.mws
    aws            = aws.eu-west-1
  }

  databricks_account_id = var.databricks_account_id
  workspace_name_prefix = each.key
  region                = "eu-west-1"
  cidr_block            = each.value.cidr_block
}
