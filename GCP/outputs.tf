#Output the VPC name
output "VPC Name" {
  value = "${module.vpc.vpc_name}"
}

#Output the VMS
output "VMS name" {
  value = "${module.vms.vms_name}"
}

output "VMS extpernal ip" {
  value = "${module.vms.vms_exip}"
}
