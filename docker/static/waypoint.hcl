project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

runner {
  enabled = true
}

app "web" {
  build {
    use "docker" {}
    registry {
      use "docker" {
        image = "foo"
        tag = "latest"
      }
    }
  }

  deploy {
    use "docker" {
    }
  }
}
