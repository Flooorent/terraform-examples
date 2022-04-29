resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "${var.workspace_name_prefix}-${random_string.naming.result}"
}
