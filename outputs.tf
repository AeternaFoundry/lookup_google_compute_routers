output "compute_routers_lookup_id" {
  description = "Map of id values across all compute_routers_lookup, keyed the same as var.compute_routers_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_compute_routers.compute_routers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_routers_lookup_project" {
  description = "Map of project values across all compute_routers_lookup, keyed the same as var.compute_routers_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_compute_routers.compute_routers_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_routers_lookup_region" {
  description = "Map of region values across all compute_routers_lookup, keyed the same as var.compute_routers_lookup except keys with no region are omitted"
  value       = { for k, v in data.google_compute_routers.compute_routers_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_routers_lookup_routers" {
  description = "Map of routers values across all compute_routers_lookup, keyed the same as var.compute_routers_lookup except keys with no routers are omitted"
  value       = { for k, v in data.google_compute_routers.compute_routers_lookup : k => v.routers if v.routers != null && length(v.routers) > 0 }
}

