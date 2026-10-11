variable "network_load_balancer_network_load_balancers_backend_sets_unifieds" {
  description = <<EOT
Map of network_load_balancer_network_load_balancers_backend_sets_unifieds, attributes below
Required:
    - name
    - network_load_balancer_id
    - policy
    - health_checker (block):
        - dns (optional, block):
            - domain_name (required)
            - query_class (optional)
            - query_type (optional)
            - rcodes (optional)
            - transport_protocol (optional)
        - interval_in_millis (optional)
        - port (optional)
        - protocol (required)
        - request_data (optional)
        - response_body_regex (optional)
        - response_data (optional)
        - retries (optional)
        - return_code (optional)
        - timeout_in_millis (optional)
        - url_path (optional)
Optional:
    - are_operationally_active_backends_preferred
    - ip_version
    - is_fail_open
    - is_instant_failover_enabled
    - is_instant_failover_tcp_reset_enabled
    - is_preserve_source
    - backends (block):
        - ip_address (optional)
        - is_backup (optional)
        - is_drain (optional)
        - is_offline (optional)
        - name (optional)
        - port (required)
        - target_id (optional)
        - weight (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                                        = string
    network_load_balancer_id                    = string
    policy                                      = string
    are_operationally_active_backends_preferred = optional(bool)
    ip_version                                  = optional(string)
    is_fail_open                                = optional(bool)
    is_instant_failover_enabled                 = optional(bool)
    is_instant_failover_tcp_reset_enabled       = optional(bool)
    is_preserve_source                          = optional(bool)
    health_checker = object({
      dns = optional(object({
        domain_name        = string
        query_class        = optional(string)
        query_type         = optional(string)
        rcodes             = optional(list(string))
        transport_protocol = optional(string)
      }))
      interval_in_millis  = optional(number)
      port                = optional(number)
      protocol            = string
      request_data        = optional(string)
      response_body_regex = optional(string)
      response_data       = optional(string)
      retries             = optional(number)
      return_code         = optional(number)
      timeout_in_millis   = optional(number)
      url_path            = optional(string)
    })
    backends = optional(list(object({
      ip_address = optional(string)
      is_backup  = optional(bool)
      is_drain   = optional(bool)
      is_offline = optional(bool)
      name       = optional(string)
      port       = number
      target_id  = optional(string)
      weight     = optional(number)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

