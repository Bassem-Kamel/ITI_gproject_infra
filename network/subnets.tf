resource "google_compute_subnetwork" "bastion-sub" {
  name          = "mangement-sub"
  ip_cidr_range = var.net_bastion_cidr
  region        = var.net_region
  network       = google_compute_network.myvpc.id
}


resource "google_compute_subnetwork" "cluster-sub" {
  name          = "restricted-sub"
  ip_cidr_range = var.net_cluster_cidr
  region        = var.net_region
  network       = google_compute_network.myvpc.id
}