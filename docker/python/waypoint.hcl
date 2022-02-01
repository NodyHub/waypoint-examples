project = "example-python"

app "example-python" {
  labels = {
    "service" = "example-python",
    "env"     = "dev"
  }

  build {
    use "docker" {}
    hook {
      when    = "before"
      command = ["sleep","180"]
    }
  }

  deploy {
    use "docker" {
      service_port = 8080
    }
  }
}
