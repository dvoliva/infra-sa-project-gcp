locals {
  service_accounts = jsondecode(file("${path.module}/modules/iam/config/service_accounts.json"))
}


module "cloud-storage" {
  source      = "./modules/cloud-storage"
  bucket_name = var.bucket_name
  region_name = var.region_name
  project_id  = var.project_id
}

module "iam" {
  count = length(local.service_accounts)
  source     = "./modules/iam"
  project_id = var.project_id
  service_account = local.service_accounts[count.index]
}
