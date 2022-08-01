
project_id = "iti-gproject"

region          = "europe-west1"
vpc_name        = "myvpc"
bastion_cidr     = "10.0.1.0/24"
cluster_cidr = "10.0.3.0/24"

vm_type  = "e2-micro"
vm_zone  = "europe-west1-b"
vm_image = "ubuntu-os-cloud/ubuntu-1804-lts"