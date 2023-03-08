variable "namespace" {
  type = string
  default = "My-ns-minipoc"
}

variable "deployment" {
  type = string
  default = "My-deployment-minipoc"
}

variable "app_name" {
  type = string
  default = "My-app-miniPOC"
}

variable "service_name" {
  type = string
  default = "My-service-miniPOC"
}


variable "k8s_replicas" {
  type = number
  default = 1
}

variable "app_pod_image" {
  type = string
  default = "nginx:latest"
}

variable "app_pod_name" {
  type = string
  default = "My-app-pod-minipoc"
}

variable "app_pod_cpu_limits" {
  type = string
  default = "1.0"
}

variable "app_pod_memory_limits" {
  type = string
  default = "1024Mi"
}

variable "app_pod_cpu_requests" {
  type = string
  default = "0.5"
}
variable "app_pod_memory_requests" {
  type = string
  default = "512Mi"
}

variable "db_pod_image" {
  type = string
  default = "postgres:latest"
}

variable "db_pod_name" {
  type = string
  default = "My-app-pod-minipoc"
}

variable "db_pod_cpu_limits" {
  type = string
  default = "1.0"
}

variable "db_pod_memory_limits" {
  type = string
  default = "1024Mi"
}

variable "db_pod_cpu_requests" {
  type = string
  default = "0.5"
}
variable "db_pod_memory_requests" {
  type = string
  default = "512Mi"
}


variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}
