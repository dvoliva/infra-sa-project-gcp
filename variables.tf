variable "project_id" {
  type = string
}

variable "region_name" {
  type    = string
  default = "us-central1"
}

variable "credentials_json_path" {
  type = string
}

# variable "datasets"{
#     description = "Nombre de los datasets para staging y produccion"
#     type = object({
#       staging = string
#       poduction = string 
#     })
# }

# variable "bucket_name" {
#   description = "nombre del bucket en cloud storage"
#   type = string
# }

# variable "dataform_repo_name" {
#   description = "nombre del repo en dataform"
#   type = string
# }
