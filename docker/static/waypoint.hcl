project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

runner {
  enabled = true
}

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
