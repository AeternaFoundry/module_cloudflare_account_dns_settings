output "account_dns_settings_account_id" {
  description = "Map of account_id values across all account_dns_settings, keyed the same as var.account_dns_settings except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_account_dns_settings.account_dns_settings : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "account_dns_settings_enforce_dns_only" {
  description = "Map of enforce_dns_only values across all account_dns_settings, keyed the same as var.account_dns_settings except keys with no enforce_dns_only are omitted"
  value       = { for k, v in cloudflare_account_dns_settings.account_dns_settings : k => v.enforce_dns_only if v.enforce_dns_only != null }
}
output "account_dns_settings_zone_defaults" {
  description = "Map of zone_defaults values across all account_dns_settings, keyed the same as var.account_dns_settings except keys with no zone_defaults are omitted"
  value       = { for k, v in cloudflare_account_dns_settings.account_dns_settings : k => v.zone_defaults if v.zone_defaults != null && length(v.zone_defaults) > 0 }
}

