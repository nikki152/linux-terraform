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

metadata = {
  ssh-keys = "jenkins:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDTZ/FeJPNDLo5xqsBm+Fvnr3+W6JLU4Ykl4ldgApk0wFmFZeLH+u3czRZICs7P6QM68EDIWSJaaXo0M4bwooEAoGBvw2XD6ejlag58zEcRd+0KmMNMccgWMQoam+GdMmPk/VVEcaOr8VieL6EYNgeydsarFTCc718GfBjbZamDzWJAEvlaR8B46uXxuzeRKyrSNNkNX7fbIx6caWsSlMK/7UymTuc27TC0ubk4m3fObNmxocN29me/BL6/A7cNDELwvCjEbhuA7IzLTjmXwHZ+YEksTTbp//Oh/r66YeXYqe1ZKdUMDGGt/77bw8k7/JR6x2enH3KyghSkeRZPRLSv jenkins"
 }
}
