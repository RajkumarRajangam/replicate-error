provider "tfe" {
  hostname = var.hostname
  token = var.tfe_token
}

module "tfe-workspaces" {
  source = "git::https://gitlab.service.koin.v2.minerva.loc/plattform/compliance/modules/terraform-tfe-tfe-workspace.git?ref=v1.0.6"
  //New structure
  workspace_name = var.workspace_name
  vcs_repo_identifier = var.vcs_repo_identifier
}
