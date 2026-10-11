output "compute_region_network_endpoint_groups_id" {
  description = "Map of id values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no id are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_region_network_endpoint_groups_app_engine" {
  description = "Map of app_engine values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no app_engine are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => one(v.app_engine) if v.app_engine != null && length(v.app_engine) > 0 }
}
output "compute_region_network_endpoint_groups_cloud_function" {
  description = "Map of cloud_function values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no cloud_function are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => one(v.cloud_function) if v.cloud_function != null && length(v.cloud_function) > 0 }
}
output "compute_region_network_endpoint_groups_cloud_run" {
  description = "Map of cloud_run values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no cloud_run are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => one(v.cloud_run) if v.cloud_run != null && length(v.cloud_run) > 0 }
}
output "compute_region_network_endpoint_groups_deletion_policy" {
  description = "Map of deletion_policy values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_region_network_endpoint_groups_description" {
  description = "Map of description values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no description are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_region_network_endpoint_groups_name" {
  description = "Map of name values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no name are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_region_network_endpoint_groups_network" {
  description = "Map of network values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no network are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.network if v.network != null && length(v.network) > 0 }
}
output "compute_region_network_endpoint_groups_network_endpoint_type" {
  description = "Map of network_endpoint_type values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no network_endpoint_type are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.network_endpoint_type if v.network_endpoint_type != null && length(v.network_endpoint_type) > 0 }
}
output "compute_region_network_endpoint_groups_project" {
  description = "Map of project values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no project are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_region_network_endpoint_groups_psc_data" {
  description = "Map of psc_data values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no psc_data are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => one(v.psc_data) if v.psc_data != null && length(v.psc_data) > 0 }
}
output "compute_region_network_endpoint_groups_psc_target_service" {
  description = "Map of psc_target_service values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no psc_target_service are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.psc_target_service if v.psc_target_service != null && length(v.psc_target_service) > 0 }
}
output "compute_region_network_endpoint_groups_region" {
  description = "Map of region values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no region are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_region_network_endpoint_groups_self_link" {
  description = "Map of self_link values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no self_link are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_region_network_endpoint_groups_subnetwork" {
  description = "Map of subnetwork values across all compute_region_network_endpoint_groups, keyed the same as var.compute_region_network_endpoint_groups except keys with no subnetwork are omitted"
  value       = { for k, v in google_compute_region_network_endpoint_group.compute_region_network_endpoint_groups : k => v.subnetwork if v.subnetwork != null && length(v.subnetwork) > 0 }
}

