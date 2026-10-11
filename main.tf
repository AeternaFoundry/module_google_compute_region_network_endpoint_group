resource "google_compute_region_network_endpoint_group" "compute_region_network_endpoint_groups" {
  for_each = var.compute_region_network_endpoint_groups

  name                  = each.value.name
  region                = each.value.region
  deletion_policy       = each.value.deletion_policy
  description           = each.value.description
  network               = each.value.network
  network_endpoint_type = each.value.network_endpoint_type
  project               = each.value.project
  psc_target_service    = each.value.psc_target_service
  subnetwork            = each.value.subnetwork

  dynamic "app_engine" {
    for_each = each.value.app_engine != null ? [each.value.app_engine] : []
    content {
      service  = app_engine.value.service
      url_mask = app_engine.value.url_mask
      version  = app_engine.value.version
    }
  }

  dynamic "cloud_function" {
    for_each = each.value.cloud_function != null ? [each.value.cloud_function] : []
    content {
      function = cloud_function.value.function
      url_mask = cloud_function.value.url_mask
    }
  }

  dynamic "cloud_run" {
    for_each = each.value.cloud_run != null ? [each.value.cloud_run] : []
    content {
      service  = cloud_run.value.service
      tag      = cloud_run.value.tag
      url_mask = cloud_run.value.url_mask
    }
  }

  dynamic "psc_data" {
    for_each = each.value.psc_data != null ? [each.value.psc_data] : []
    content {
      producer_port = psc_data.value.producer_port
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

