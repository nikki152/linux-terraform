provider "google" {
  project = "getteam"
  region = "asia-south1"
  zone = "asia-south1-c"
}

resource "google_compute_instance" "linux-vm" {
  name = "n-linux-server"
  machine_type = "e2-micro"
  zone = "asia-south1-c"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
