variable "compute_region_network_endpoint_groups" {
  description = <<EOT
Map of compute_region_network_endpoint_groups, attributes below
Required:
    - name
    - region
Optional:
    - deletion_policy
    - description
    - network
    - network_endpoint_type
    - project
    - psc_target_service
    - subnetwork
    - app_engine (block):
        - service (optional)
        - url_mask (optional)
        - version (optional)
    - cloud_function (block):
        - function (optional)
        - url_mask (optional)
    - cloud_run (block):
        - service (optional)
        - tag (optional)
        - url_mask (optional)
    - psc_data (block):
        - producer_port (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    name                  = string
    region                = string
    deletion_policy       = optional(string)
    description           = optional(string)
    network               = optional(string)
    network_endpoint_type = optional(string)
    project               = optional(string)
    psc_target_service    = optional(string)
    subnetwork            = optional(string)
    app_engine = optional(object({
      service  = optional(string)
      url_mask = optional(string)
      version  = optional(string)
    }))
    cloud_function = optional(object({
      function = optional(string)
      url_mask = optional(string)
    }))
    cloud_run = optional(object({
      service  = optional(string)
      tag      = optional(string)
      url_mask = optional(string)
    }))
    psc_data = optional(object({
      producer_port = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

