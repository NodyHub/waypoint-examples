# waypoint init
# waypoint build -local=false

project = "remote-build-definition"

runner {
  enabled = true

  data_source "git" {
    url  = "https://github.com/NodyHub/waypoint-examples.git"
    path = "docker/static"
  }
}
