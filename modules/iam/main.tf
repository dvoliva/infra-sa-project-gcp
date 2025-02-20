# resource "google_service_account" "sa" {
#   for_each     = { for sa in local.service_accounts : sa.name => sa }
#   account_id   = each.value.name
#   display_name = each.value.display_name
# }

# resource "google_project_iam_member" "sa_roles" {
#   for_each = { for sa in local.service_accounts : sa.name => sa }
#   project = var.project_id
#   role = each.key
#   member = "serviceAccount:${google_service_account.sa[each.value.name].email}"
# }

resource "google_service_account" "service_account" {
    account_id = var.service_account.name
    display_name = "Service account for ${var.service_account.name}"
}

resource "google_project_iam_member" "service_account_roles" {
  for_each = toset(var.service_account.roles)
  project = var.project_id
  role = each.key
  member = "serviceAccount:${google_service_account.service_account.email}"
}
