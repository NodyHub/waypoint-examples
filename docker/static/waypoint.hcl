# waypoint init
# waypoint build -local=false

project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

# runner {
#   enabled = true
# }

runner {
  enabled = true

  data_source "git" {
    url  = "https://github.com/NodyHub/waypoint-examples.git"
    path = "docker/static"
  }
}

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
