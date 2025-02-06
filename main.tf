module "cloud-storage" {
  source      = "./modules/cloud-storage"
  bucket_name = "elt-terraform-state"
  region_name = var.region_name
  project_id  = var.project_id
}
