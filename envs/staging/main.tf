module "webapp" {
  source = "../../modules/webapp"

  environment     = "staging"
  app_name_suffix = "ks"
}

output "app_url" {
  value = module.webapp.app_url
}