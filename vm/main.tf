resource "google_compute_instance" "primary" {
  machine_type = var.machine_type
  name         = var.instance_name
  zone         = var.zone
  project      = var.project_id

  boot_disk {
    initialize_params {
      image = var.boot_image
      type  = "pd-standard"
      size  = var.disk_size
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.vpc_subnetwork.name
    access_config {
      network_tier = "PREMIUM"
    }
  }

  metadata = {
    "ssh-keys" : join("\n", [for e in var.ssh_keys : "${e.username}:${e.public_key}"])
  }

}