#Output the IP Address of the Container
output "vpc_name" {
  value = "${google_compute_network.vpc.name}"
}

output "vpc_subnet" {
  value = "${google_compute_subnetwork.subnet.name}"
}

output "vpc_network" {
  value = "${google_compute_firewall.firewall.network}"
}

output "vpc_project" {
  value = "${google_compute_network.vpc.project}"
}
