output "email_templates_id" {
  description = "Map of id values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.id }
}
output "email_templates_body" {
  description = "Map of body values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.body }
}
output "email_templates_enabled" {
  description = "Map of enabled values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.enabled }
}
output "email_templates_from" {
  description = "Map of from values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.from }
}
output "email_templates_include_email_in_redirect" {
  description = "Map of include_email_in_redirect values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.include_email_in_redirect }
}
output "email_templates_result_url" {
  description = "Map of result_url values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.result_url }
}
output "email_templates_subject" {
  description = "Map of subject values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.subject }
}
output "email_templates_syntax" {
  description = "Map of syntax values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.syntax }
}
output "email_templates_template" {
  description = "Map of template values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.template }
}
output "email_templates_url_lifetime_in_seconds" {
  description = "Map of url_lifetime_in_seconds values across all email_templates, keyed the same as var.email_templates"
  value       = { for k, v in auth0_email_template.email_templates : k => v.url_lifetime_in_seconds }
}

