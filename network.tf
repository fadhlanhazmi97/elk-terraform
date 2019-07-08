resource "google_compute_firewall" "default" {
  name    = "firewall"
  network = "default"
 
  allow {
    protocol = "tcp"
  }
 
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "udp"
  }
} 