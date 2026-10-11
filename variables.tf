variable "account_dns_settings" {
  description = <<EOT
Map of account_dns_settings, attributes below
Required:
    - account_id
Optional:
    - enforce_dns_only
    - zone_defaults
EOT

  type = map(object({
    account_id       = string
    enforce_dns_only = optional(bool)
    zone_defaults = optional(object({
      flatten_all_cnames = optional(bool)
      foundation_dns     = optional(bool)
      internal_dns = optional(object({
        reference_zone_id = optional(string)
      }))
      multi_provider = optional(bool)
      nameservers = optional(object({
        type = optional(string)
      }))
      ns_ttl              = optional(number)
      secondary_overrides = optional(bool)
      soa = optional(object({
        expire  = optional(number)
        min_ttl = optional(number)
        mname   = optional(string)
        refresh = optional(number)
        retry   = optional(number)
        rname   = optional(string)
        ttl     = optional(number)
      }))
      zone_mode = optional(string)
    }))
  }))
}

