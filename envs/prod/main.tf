module "webapp" {
  source = "../../modules/webapp"

  environment     = "prod"
  app_name_suffix = "ks"
}

output "app_url" {
  value = module.webapp.app_url
}