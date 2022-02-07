project = "example-go"


runner {
  enabled = true
}


app "example-go" {
  labels = {
    "service" = "example-go",
    "env"     = "dev"
  }

  build {
    use "pack" {}
    registry {
      use "docker" {
      }
    }
  }

  deploy {
    use "docker" {}
  }
}
