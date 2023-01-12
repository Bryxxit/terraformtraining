terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
  required_version = ">=0.13"
  backend "s3" {
    profile = "gizmo"
    region = "us-east-1"
    key = "terraform.tfstate"
    bucket = "myterraformstates3bucket"
  }
}
