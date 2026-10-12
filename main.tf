resource "vault_aws_auth_backend_identity_whitelist" "aws_auth_backend_identity_whitelists" {
  for_each = var.aws_auth_backend_identity_whitelists

  backend               = each.value.backend
  disable_periodic_tidy = each.value.disable_periodic_tidy
  namespace             = each.value.namespace
  safety_buffer         = each.value.safety_buffer
}

