provider "google" {
  project     = var.project
  region      = var.region
  credentials = var.credentials
}

locals {
  setup_name = "dxc"
}

resource "google_compute_network" "my-vpc" {
  name = var.my-vpc
  
}

resource "google_compute_subnetwork" "subnetwork" {
  name = var.subnetwork
  ip_cidr_range = var.subnet_cidr
  network = google_compute_network.my-vpc.id
  region = "us-central1"
}

resource "google_compute_instance" "my-instance" {
  name         = var.instance_type
  machine_type = var.machine_type
  zone         = var.zone

  tags = [local.setup_name]
    

  boot_disk {
    initialize_params {
      image = var.os_image 
    }
  }

  network_interface {
    network = google_compute_network.my-vpc.id
    subnetwork = google_compute_subnetwork.subnetwork.id

    access_config {
    }
  }
}