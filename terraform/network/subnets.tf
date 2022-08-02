resource "google_compute_subnetwork" "bastion-sub" {
  name          = "bastion-sub"
  ip_cidr_range = var.net_bastion_cidr
  region        = var.net_region
  network       = google_compute_network.myvpc.id
}


resource "google_compute_subnetwork" "cluster-sub" {
  name          = "cluster-sub"
  ip_cidr_range = var.net_cluster_cidr
  region        = var.net_region
  network       = google_compute_network.myvpc.id
}