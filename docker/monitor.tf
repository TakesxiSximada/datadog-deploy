resource "datadog_monitor" "sximada_docker_io_write_monitor" {
  name = "[SXIMADA] Docker IO Write"
  type = "metric alert"
  message = "fish"
  escalation_message = "fishi2"
  query = "avg:docker.io.write_bytes{*}"

  thresholds {
    ok = 0
    warning = 1
    critical = 2
  }

  notify_no_data = false
  renotify_interval = 60

  notify_audit = false
  timeout_h = 60
  include_tags = true

  silenced {
    "*" = 0
  }

  tags = {
    project = "sximada"
  }

}
