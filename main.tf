resource "auth0_email_template" "email_templates" {
  for_each = var.email_templates

  body                      = each.value.body
  enabled                   = each.value.enabled
  from                      = each.value.from
  subject                   = each.value.subject
  syntax                    = each.value.syntax
  template                  = each.value.template
  include_email_in_redirect = each.value.include_email_in_redirect
  result_url                = each.value.result_url
  url_lifetime_in_seconds   = each.value.url_lifetime_in_seconds
}

