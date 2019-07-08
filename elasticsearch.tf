resource "google_compute_instance" "elasticsearch" {
  count = 3
  name = "es-${count.index+1}"
  machine_type = "n1-standard-1"
  metadata_startup_script = "git clone git://github.com/fadhlanhazmi97/docker-elk-filebeat.git && sudo sysctl -w vm.max_map_count=262144 && cd docker-elk-filebeat/elasticsearch && make"

  boot_disk {
    initialize_params {
      image = "debian-9-docker-compose"
    }
  }

  network_interface {
    network = "default"
    network_ip = "10.128.0.${count.index+101}"
    access_config{

    }
  }
}