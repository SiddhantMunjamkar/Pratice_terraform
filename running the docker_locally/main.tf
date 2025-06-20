terraform {

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
  required_version = "~> 1.7"

}


resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
  pull_triggers = [
    "latest"
  ]

}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 8080
  }

}
