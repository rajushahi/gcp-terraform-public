#Output the IP Address of the Container
output "vms_name" {
  value = "${google_compute_instance.default.name}"
}

output "vms_exip" {
  value = "${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}"
}
