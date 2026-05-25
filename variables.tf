variable "image_name" {
  description = "Docker image used to create the container."
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Name of the Docker container."
  type        = string
  default     = "terraform-nginx"
}

variable "internal_port" {
  description = "Internal port exposed by the container."
  type        = number
  default     = 80
}

variable "external_port" {
  description = "External port exposed on the host machine."
  type        = number
  default     = 8080
}
