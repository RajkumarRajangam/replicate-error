provider "tfe" {
  hostname = var.hostname
  token = var.tfe_token
}

module "tfe-workspace" {
  source  = "app.terraform.io/tenant-raj/tfe-workspace/tfe"
  version = "1.0.1"
  organization_name = var.organization_name
  workspace_name = var.workspace_name
}
