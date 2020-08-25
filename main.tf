resource "google_compute_instance" "instance" {
  name         = "${var.name}-srv"
  machine_type = var.instance_size
  zone         = "${var.region}-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }

  network_interface {
    network = var.vpc
    subnetwork = var.subnet
  }

    metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>This is a test VM brought to you by Aviatrix!</h1></body></html>' | sudo tee /var/www/html/index.html"

    tags = ["allow-ssh"]
    metadata = {
        ssh-keys = "ubuntu:${var.ssh_key}"
    }
}

resource "google_compute_firewall" "fw" {
  name    = "allow-ssh"
  network = var.vpc

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
      protocol  = "icmp"
  } 

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-ssh"]
}