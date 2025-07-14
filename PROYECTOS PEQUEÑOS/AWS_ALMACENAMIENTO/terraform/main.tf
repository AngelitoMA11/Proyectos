module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  private_subnet_cidrs = var.private_subnet_cidrs
  azs                  = var.azs
}
module "redshift" {
  source                = "./modules/redshift"
  namespace_name        = var.namespace_name
  workgroup_name        = var.workgroup_name
  admin_username        = var.admin_username
  admin_user_password   = var.admin_user_password
  subnet_ids            = module.vpc.private_subnet_ids
  security_group_ids    = [module.vpc.security_group_id]
  depends_on = [ module.vpc ]
}

module "rds_postgresql" {
  source             = "./modules/postgressql"
  db_name            = "postgres"
  username           = "postgres"
  password           = var.password
  subnet_ids         = module.vpc.private_subnet_ids
  security_group_id  = module.vpc.security_group_id
  depends_on = [ module.vpc ]
}
