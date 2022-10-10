

module "vpc" {
  source   = "./module_vpc"
  # Try to avoid asses in code :DDDDD
  # Sth like rt_pub_association is longer, but more readable and doesn't make everyone horny
  rtpubass = module.vpc.subnet_pub_ids

}

module "ec2" {
  source = "./module_ec2"
  depends_on = [
    module.vpc
  ]
  
  # I'm a fan of having one convention for vars naming, snake_case_for_terraform_should_stay_consistent
  # Leave the dashes for tags/names inside cloud
  machine-priv = module.vpc.subnet_priv_ids
  machine-pub  = module.vpc.subnet_pub_ids
}
