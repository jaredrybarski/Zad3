

module "vpc" {
  source   = "./module_vpc"
  rtpubass = module.vpc.subnet_pub_ids

}

module "ec2" {
  source = "./module_ec2"
  depends_on = [
    module.vpc
  ]
  machine-priv = module.vpc.subnet_priv_ids
  machine-pub  = module.vpc.subnet_pub_ids
}
