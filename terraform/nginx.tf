provider "docker" {}

data "docker_registry_image" "image_name" {
    name = "nginx:latest"
}

resource "docker_image" "images" {
    name = "${data.docker_registry_image.image_name.name}"
}

output "result" {
  value = "${docker_image.images.name}"
}
