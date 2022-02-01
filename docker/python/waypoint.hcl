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
    }
  }

  deploy {
    use "docker" {
      service_port = 8080
    }
  }
}
