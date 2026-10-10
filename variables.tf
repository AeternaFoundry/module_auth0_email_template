variable "email_templates" {
  description = <<EOT
Map of email_templates, attributes below
Required:
    - body
    - enabled
    - from
    - subject
    - syntax
    - template
Optional:
    - include_email_in_redirect
    - result_url
    - url_lifetime_in_seconds
EOT

  type = map(object({
    body                      = string
    enabled                   = bool
    from                      = string
    subject                   = string
    syntax                    = string
    template                  = string
    include_email_in_redirect = optional(bool)
    result_url                = optional(string)
    url_lifetime_in_seconds   = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.email_templates : (
        contains([for v in ["verify_email", "verify_email_by_code", "reset_email", "reset_email_by_code", "welcome_email", "blocked_account", "stolen_credentials", "enrollment_email", "mfa_oob_code", "user_invitation", "change_password", "password_reset", "async_approval", "auth_email_by_code"] : lower(v)], lower(v.template))
      )
    ])
    error_message = "must be one of: \"verify_email\", \"verify_email_by_code\", \"reset_email\", \"reset_email_by_code\", \"welcome_email\", \"blocked_account\", \"stolen_credentials\", \"enrollment_email\", \"mfa_oob_code\", \"user_invitation\", \"change_password\", \"password_reset\", \"async_approval\", \"auth_email_by_code\""
  }
}

