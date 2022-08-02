
resource "google_compute_firewall" "allow_ssh" {
  project       = var.project_id
  name          = "allow-ssh"
  network       = var.vpc_name
  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"] # all ips
  #the firewall will apply only to traffic that has source IP address in these ranges

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  depends_on = [
    module.network
  ]

}