terraform {
  required_providers {
    databricks = {
      source                = "databrickslabs/databricks"
      version               = "0.4.8"
      configuration_aliases = [databricks.mws]
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.49.0"
    }
  }
}
