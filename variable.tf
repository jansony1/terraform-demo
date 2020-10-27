variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "nginx:latest"
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}
