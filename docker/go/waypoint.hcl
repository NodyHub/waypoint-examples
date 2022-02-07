project = "example-go"

app "example-go" {
  labels = {
    "service" = "example-go",
    "env"     = "dev"
  }

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "docker-go"
        tag   = "latest"
      }
    }
  }

  deploy {
    use "docker" {}
  }
}
