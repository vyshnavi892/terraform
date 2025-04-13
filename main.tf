provider "google" {
  project     = var.project
  region      = var.region
  credentials = "keys.json"
}

resource "google_compute_instance" "my-instance" {
  name         = "my-instance"
  machine_type = "e2-medium"
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"  # Changed the direct value here for demonstration
    }
  }

  network_interface {
    network = "default"

    access_config {
      # This will assign an ephemeral external IP address
    }
  }
}