resource "google_compute_instance" "default" {
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  project      = "${var.project}"

  tags = ["${var.name}", "${var.subnet}"]

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  network_interface {
    //network = "${var.network}"
    subnetwork ="${var.subnet}"

    access_config {
      // Ephemeral IP
    }
  }

  provisioner "remote-exec" {
   connection {
     type = "ssh"
     user = "${var.user}"
     private_key = "${file("${var.private_key_path}")}"
     agent = true
   }

   inline = [
     "sudo apt-get -y install python",
   ]
 }

}
