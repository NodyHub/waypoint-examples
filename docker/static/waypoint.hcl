project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }

app "web" {
  build {
    use "docker" {
      buildkit = false
    }
  }

  deploy {
    use "docker" {
    }
  }
}
