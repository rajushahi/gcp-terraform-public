terraform {
  backend "gcs" {
    bucket  = "ddn-tf-state"
    prefix  = "terraform/state"
  }
}

# GCP NETWORK MODULE
module "vpc" {
  source        = "./modules/vpc"
  name          = "${var.vpc_name}"
  region        = "${var.region}"
  subnet_cidr   = "${var.subnet_cidr}"

}


# GCP VMS INSTANCE MODULE
module "vms" {
  source           = "./modules/vms"
  name             = "${var.vms_name}"
  user             = "${var.user}"
  project          = "${module.vpc.vpc_project}"
  region           = "${var.region}"
  zone             = "${var.zone}"
  image            = "${var.image}"
  machine_type     = "${var.machine_type}"
  // network       = "${module.vpc.vpc_network}"
  subnet           = "${module.vpc.vpc_subnet}"
  private_key_path = "${var.private_key_path}"
}

# GCP NETWORK MODULE
module "storage" {
  source            = "./modules/storage-buckets"
  region            = "${var.region}"
  bucket_name       = "${var.bucket_name}"
  storage_class     = "${var.storage_class}"
}
