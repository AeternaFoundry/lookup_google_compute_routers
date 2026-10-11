data "google_compute_routers" "compute_routers_lookup" {
  for_each = var.compute_routers_lookup

  project = each.value.project
  region  = each.value.region
}

