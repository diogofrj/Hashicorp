terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    test = {
      source = "terraform.io/builtin/test"
    }
    
  }
}


provider "google" {
  alias = "terraform"
}




# VAULT SERVER
resource "google_compute_instance" "vault_instance" {
  name         = "vault1"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["projeto", "vault"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-minimal-2004-lts"
    }
  }
  /*# Local SSD disk 
  disk {
    type    = "local-ssd"
    scratch = true
  }
*/
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata = {
    ssh-keys = "localadmin:${file("~/.ssh/id_rsa.pub")}"
    startup-script        = "${file("vault-install.sh")}"

  }
 
  


}


resource "google_compute_firewall" "vault_fw" {
  name        = "allow-ports"
  network     = "default"
  description = "Permite Acesso Inbound"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "3389", "80", "443", "8200"]
  }



}


output "IPEXTERNO-VAULT1" {
  value       = "ssh -o ServerAliveInterval=6000 localadmin@${google_compute_instance.vault_instance.network_interface.0.access_config.0.nat_ip}"
  description = "IP Externo"
}
