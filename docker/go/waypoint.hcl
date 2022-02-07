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
        image = "foo"
        tag = "latest"
        local = true
      }
    }
  }

  deploy {
    use "docker" {}
  }
}
