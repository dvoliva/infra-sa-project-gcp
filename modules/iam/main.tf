locals {
  service_accounts = jsondecode(file("${path.module}/config/service_accounts.json")).service_accounts
}

resource "google_service_account" "sa" {
  for_each     = { for sa in local.service_accounts : sa.name => sa }
  account_id   = each.value.name
  display_name = each.value.display_name
}
