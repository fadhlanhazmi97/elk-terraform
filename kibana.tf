resource "google_compute_instance" "kibana" {
  name = "kibana"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9-docker-compose"
    }
  }

  network_interface {
    network = "default"
    access_config{

    }
  }
}