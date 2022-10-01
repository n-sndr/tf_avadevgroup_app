terraform {
  required_version = ">= 1.1.0"
  cloud {
    organization = "avadevgroup"
    workspaces {
      name = "tf_avadevgroup_app_nonprd"
    }
  }
}
