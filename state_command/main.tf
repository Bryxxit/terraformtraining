terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}

# configure the Docker provider
provider "docker" {}

#Image used by container
resource "docker_image" "terraform-centos" {
  name         = "centos:7"
  keep_locally = true
}

# Create container
resource "docker_container" "centos" {
  image = docker_image.terraform-centos.latest
  name  = "terraform-centos4"
  start = true
  command = ["/bin/sleep", "500"]
}
