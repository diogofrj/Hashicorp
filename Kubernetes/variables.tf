variable "name" {
  default = "nginx"
}

variable "namespace" {
  default = "default"
}

variable "replicas" {
  default = 1
}

variable "user_id" {
  default = 1001
}

variable "image" {
  type    = string
  default = "nginxinc/nginx-unprivileged:1.16"
}

variable "port" {
  default = 8080
}

variable "service_port" {
  default = 80
}


