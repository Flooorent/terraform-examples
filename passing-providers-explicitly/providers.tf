terraform {
  backend "s3" {
    bucket = "flo-tf-dbx"
    key    = "passing-providers-explicitly"
    region = "eu-west-1"
  }

  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.4.8"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.49.0"
    }
  }
}

// initialize provider in "MWS" mode to provision new workspaces
provider "databricks" {
  alias    = "mws"
  host     = "https://accounts.cloud.databricks.com"
  username = var.databricks_account_username
  password = var.databricks_account_password
}

provider "aws" {
  region = "eu-west-1"
  alias  = "eu-west-1"
}

# All workspace-specific providers
locals {
  workspace-url-prefix = "db-cs"
}

provider "databricks" {
  alias    = "passing-providers-explicitly-01"
  host     = "https://${local.workspace-url-prefix}-passing-providers-explicitly-01.cloud.databricks.com"
  username = var.databricks_account_username
  password = var.databricks_account_password
}

provider "databricks" {
  alias    = "passing-providers-explicitly-02"
  host     = "https://${local.workspace-url-prefix}-passing-providers-explicitly-02.cloud.databricks.com"
  username = var.databricks_account_username
  password = var.databricks_account_password
}
