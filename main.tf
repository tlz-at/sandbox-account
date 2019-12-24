# AWS provider and region

data "aws_caller_identity" "current" {}

locals {
  baseline_version = "v0.0.2"
}

data "terraform_remote_state" "baseline" {
  backend = "remote"

  config {
    organization = "${var.tfe_org_name}"
    hostname     = "${var.tfe_host_name}"

    workspaces {
      name = "${var.baseline_workspace_name}"
    }
  }
}

provider "aws" {
  region = "${data.terraform_remote_state.baseline.region}"
}
