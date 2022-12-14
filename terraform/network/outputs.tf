output "out_vpc_name" {
    value = google_compute_network.myvpc.name
  
}
output "out_bastion-sub_name" {
  value = google_compute_subnetwork.bastion-sub.name
}

output "out_cluster-sub_name" {
  value = google_compute_subnetwork.cluster-sub.name
}