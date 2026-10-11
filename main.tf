resource "oci_network_load_balancer_network_load_balancers_backend_sets_unified" "network_load_balancer_network_load_balancers_backend_sets_unifieds" {
  for_each = var.network_load_balancer_network_load_balancers_backend_sets_unifieds

  name                                        = each.value.name
  network_load_balancer_id                    = each.value.network_load_balancer_id
  policy                                      = each.value.policy
  are_operationally_active_backends_preferred = each.value.are_operationally_active_backends_preferred
  ip_version                                  = each.value.ip_version
  is_fail_open                                = each.value.is_fail_open
  is_instant_failover_enabled                 = each.value.is_instant_failover_enabled
  is_instant_failover_tcp_reset_enabled       = each.value.is_instant_failover_tcp_reset_enabled
  is_preserve_source                          = each.value.is_preserve_source

  health_checker {
    dynamic "dns" {
      for_each = each.value.health_checker.dns != null ? [each.value.health_checker.dns] : []
      content {
        domain_name        = dns.value.domain_name
        query_class        = dns.value.query_class
        query_type         = dns.value.query_type
        rcodes             = dns.value.rcodes
        transport_protocol = dns.value.transport_protocol
      }
    }
    interval_in_millis  = each.value.health_checker.interval_in_millis
    port                = each.value.health_checker.port
    protocol            = each.value.health_checker.protocol
    request_data        = each.value.health_checker.request_data
    response_body_regex = each.value.health_checker.response_body_regex
    response_data       = each.value.health_checker.response_data
    retries             = each.value.health_checker.retries
    return_code         = each.value.health_checker.return_code
    timeout_in_millis   = each.value.health_checker.timeout_in_millis
    url_path            = each.value.health_checker.url_path
  }

  dynamic "backends" {
    for_each = each.value.backends != null ? each.value.backends : []
    content {
      ip_address = backends.value.ip_address
      is_backup  = backends.value.is_backup
      is_drain   = backends.value.is_drain
      is_offline = backends.value.is_offline
      name       = backends.value.name
      port       = backends.value.port
      target_id  = backends.value.target_id
      weight     = backends.value.weight
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

