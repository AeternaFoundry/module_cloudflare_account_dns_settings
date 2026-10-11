resource "cloudflare_account_dns_settings" "account_dns_settings" {
  for_each = var.account_dns_settings

  account_id       = each.value.account_id
  enforce_dns_only = each.value.enforce_dns_only
  zone_defaults    = each.value.zone_defaults
}

