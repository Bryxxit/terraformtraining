variable "external_port" {
  description = "external port"
  type = number
  default = 8081
  validation {
    condition = can(regex("80|8080", var.external_port))
    error_message = "Port value must be either 80 or 8080."
  }
}
