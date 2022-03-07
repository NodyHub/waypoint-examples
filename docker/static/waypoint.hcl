project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

# runner {
#   enabled = true
# }

app "web" {
  build {
    use "docker" {
      # disable_entrypoint = false
    }
    registry {
      use "docker" {
        image = "127.0.0.1:5000/foo"
        tag = "latest"
        insecure = true
      }
    }
  }

  deploy {
    use "docker" {
    }
  }
}

