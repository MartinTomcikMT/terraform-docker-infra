output "container_name" {
  description = "Name of the created Docker container."
  value       = docker_container.nginx.name
}

output "container_id" {
  description = "ID of the created Docker container."
  value       = docker_container.nginx.id
}

output "image_name" {
  description = "Docker image used by the container."
  value       = docker_image.nginx.name
}

output "application_url" {
  description = "Local URL where the custom Nginx page is available."
  value       = "http://localhost:${var.external_port}"
}