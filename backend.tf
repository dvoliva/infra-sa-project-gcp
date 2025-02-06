terraform {
  backend "gcs" {
    bucket  = "elt-terraform-state"  
    prefix  = "terraform/state"
    credentials = "./elt-project-447719-69ccb8f24b6b.json"
  }
}
