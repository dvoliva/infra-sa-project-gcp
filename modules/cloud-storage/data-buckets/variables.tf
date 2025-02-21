variable "bucket_name" {
  type = list(string)
  description = "bucket for Terraform State"
}

variable "region_name" {
  type    = string
  default = "us-central1"
}

variable "versioning_enabled" {
  type        = bool
  description = "Habilitar versioning en los buckets"
  default     = true
}

variable "uniform_bucket_level_access" {
  type        = bool
  description = "Habilitar acceso uniforme a nivel de bucket"
  default     = true
}

variable "public_access_prevention" {
  type        = string
  description = "Prevención de acceso público (enforced o inherited)"
  default     = "enforced"
}

variable "project_id" {
  type = string
}
