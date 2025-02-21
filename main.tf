locals {
  service_accounts = jsondecode(file("${path.module}/modules/iam/config/service_accounts.json"))
}

module "iam" {
  count           = length(local.service_accounts)
  source          = "./modules/iam"
  project_id      = var.project_id
  service_account = local.service_accounts[count.index]
}

module "cloud-storage" {
  source      = "./modules/cloud-storage/state-bucket"
  bucket_name = var.bucket_name
  region_name = var.region_name
  project_id  = var.project_id
}

module "cloud-storage-data-buckets" {
  source      = "./modules/cloud-storage/data-buckets"
  bucket_name = [
    "raw-data",
    "intermediate-data",
    "models",
    "logs"
  ]
  region_name = var.region_name
  project_id = var.project_id
}
