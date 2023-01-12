
terraform{
 required_providers {
  docker = {
    source = "kreuzwerker/docker"
    version = "2.15.0"
  }
 }
}

provider "docker" {}

resource "docker_image" "terraform-centos" {
  name = "centos:7"
  keep_locally = true
}

resource "docker_container" "centos" {
  image = docker_image.terraform-centos.latest
  name = "terraform-centos7bis"
  start = true
  command = ["/bin/sleep", "500"]
}
