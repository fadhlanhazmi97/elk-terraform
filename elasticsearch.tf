resource "google_compute_instance" "elasticsearch" {
  count = 3
  name = "es-${count.index+1}"
  machine_type = "n1-standard-1"
  metadata_startup_script = "${file("scripts/elasticsearch.sh")}"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    network_ip = "10.128.0.${count.index+101}"
    access_config{

    }
  }
}