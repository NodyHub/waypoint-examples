project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

app "web" {
  build {
    use "docker" {
      buildkit = false
    }
    registry {
      use "docker" {
        tag   = "latest"
      }
    }
  }

  deploy {
    use "docker" {
    }
  }
}
