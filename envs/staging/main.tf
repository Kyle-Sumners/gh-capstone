module "webapp" {
  source = "../../modules/webapp"

  environment     = "staging"
  app_name_suffix = "ks"
}

output "app_url" {
  value = module.webapp.app_url
}

output "web_app_name" {
  value = module.webapp.web_app_name
}

output "resource_group_name" {
  value = module.webapp.resource_group_name
}