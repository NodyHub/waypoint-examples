project = "angular-example"

runner {
  enabled = true

  data_source "git" {
    url  = "https://github.com/NodyHub/waypoint-examples.git"
    path = "docker/angular"
  }
}

app "angular" {
  build {
    use "pack" {}
  }

  deploy {
    use "docker" {
    }
  }
}
