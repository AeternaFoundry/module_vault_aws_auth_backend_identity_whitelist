variable "aws_auth_backend_identity_whitelists" {
  description = <<EOT
Map of aws_auth_backend_identity_whitelists, attributes below
Optional:
    - backend
    - disable_periodic_tidy
    - namespace
    - safety_buffer
EOT

  type = map(object({
    backend               = optional(string)
    disable_periodic_tidy = optional(bool)
    namespace             = optional(string)
    safety_buffer         = optional(number)
  }))
}

