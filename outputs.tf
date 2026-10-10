output "email_templates_id" {
  description = "Map of id values across all email_templates, keyed the same as var.email_templates except keys with no id are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "email_templates_body" {
  description = "Map of body values across all email_templates, keyed the same as var.email_templates except keys with no body are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.body if v.body != null && length(v.body) > 0 }
}
output "email_templates_enabled" {
  description = "Map of enabled values across all email_templates, keyed the same as var.email_templates except keys with no enabled are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.enabled if v.enabled != null }
}
output "email_templates_from" {
  description = "Map of from values across all email_templates, keyed the same as var.email_templates except keys with no from are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.from if v.from != null && length(v.from) > 0 }
}
output "email_templates_include_email_in_redirect" {
  description = "Map of include_email_in_redirect values across all email_templates, keyed the same as var.email_templates except keys with no include_email_in_redirect are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.include_email_in_redirect if v.include_email_in_redirect != null }
}
output "email_templates_result_url" {
  description = "Map of result_url values across all email_templates, keyed the same as var.email_templates except keys with no result_url are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.result_url if v.result_url != null && length(v.result_url) > 0 }
}
output "email_templates_subject" {
  description = "Map of subject values across all email_templates, keyed the same as var.email_templates except keys with no subject are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.subject if v.subject != null && length(v.subject) > 0 }
}
output "email_templates_syntax" {
  description = "Map of syntax values across all email_templates, keyed the same as var.email_templates except keys with no syntax are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.syntax if v.syntax != null && length(v.syntax) > 0 }
}
output "email_templates_template" {
  description = "Map of template values across all email_templates, keyed the same as var.email_templates except keys with no template are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.template if v.template != null && length(v.template) > 0 }
}
output "email_templates_url_lifetime_in_seconds" {
  description = "Map of url_lifetime_in_seconds values across all email_templates, keyed the same as var.email_templates except keys with no url_lifetime_in_seconds are omitted"
  value       = { for k, v in auth0_email_template.email_templates : k => v.url_lifetime_in_seconds if v.url_lifetime_in_seconds != null }
}

