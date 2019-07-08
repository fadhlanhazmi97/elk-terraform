resource "google_compute_instance" "kibana" {
  name = "kibana"
  machine_type = "n1-standard-1"
  metadata_startup_script = "git clone git://github.com/fadhlanhazmi97/docker-elk-filebeat.git && cd docker-elk-filebeat/kibana && docker-compose up -d"

  boot_disk {
    initialize_params {
      image = "debian-9-docker-compose"
    }
  }

  network_interface {
    network = "default"
    access_config{

    }
  }
}