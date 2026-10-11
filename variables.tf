variable "compute_routers_lookup" {
  description = <<EOT
Map of compute_routers_lookup, attributes below
Optional:
    - project
    - region
EOT

  type = map(object({
    project = optional(string)
    region  = optional(string)
  }))
}

