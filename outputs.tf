output "network_load_balancer_network_load_balancers_backend_sets_unifieds_id" {
  description = "Map of id values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no id are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_are_operationally_active_backends_preferred" {
  description = "Map of are_operationally_active_backends_preferred values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no are_operationally_active_backends_preferred are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.are_operationally_active_backends_preferred if v.are_operationally_active_backends_preferred != null }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_backends" {
  description = "Map of backends values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no backends are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.backends if v.backends != null && length(v.backends) > 0 }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_health_checker" {
  description = "Map of health_checker values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no health_checker are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => one(v.health_checker) if v.health_checker != null && length(v.health_checker) > 0 }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_ip_version" {
  description = "Map of ip_version values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no ip_version are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.ip_version if v.ip_version != null && length(v.ip_version) > 0 }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_is_fail_open" {
  description = "Map of is_fail_open values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no is_fail_open are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.is_fail_open if v.is_fail_open != null }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_is_instant_failover_enabled" {
  description = "Map of is_instant_failover_enabled values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no is_instant_failover_enabled are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.is_instant_failover_enabled if v.is_instant_failover_enabled != null }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_is_instant_failover_tcp_reset_enabled" {
  description = "Map of is_instant_failover_tcp_reset_enabled values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no is_instant_failover_tcp_reset_enabled are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.is_instant_failover_tcp_reset_enabled if v.is_instant_failover_tcp_reset_enabled != null }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_is_preserve_source" {
  description = "Map of is_preserve_source values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no is_preserve_source are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.is_preserve_source if v.is_preserve_source != null }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_name" {
  description = "Map of name values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no name are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_network_load_balancer_id" {
  description = "Map of network_load_balancer_id values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no network_load_balancer_id are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.network_load_balancer_id if v.network_load_balancer_id != null && length(v.network_load_balancer_id) > 0 }
}
output "network_load_balancer_network_load_balancers_backend_sets_unifieds_policy" {
  description = "Map of policy values across all network_load_balancer_network_load_balancers_backend_sets_unifieds, keyed the same as var.network_load_balancer_network_load_balancers_backend_sets_unifieds except keys with no policy are omitted"
  value       = { for k, v in oci_network_load_balancer_network_load_balancers_backend_sets_unified.network_load_balancer_network_load_balancers_backend_sets_unifieds : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

