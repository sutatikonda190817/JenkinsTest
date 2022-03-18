terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.14.0"
    }
  }
}

provider "google" {
  project     = "plasma-crossbar-344506"
  region      = "us-west4"
  access_token = "ya29.c.b0AXv0zTPicsrTlAmoUPbDlzHrsNo7Mb6mBUpMVUqozvKMhtukGITpWrnkMxmaCebcRBDHXSFTBfNyUJxAab9Any983xJHRZP9Ii9M3wYhvfqr_-Cvu05-QW1y6kXm11YLf4sLq7EhnBcoemmQSjLrkcd4tOzH06tTUcMTYyaeM04aBUxstpCr1rl0y8z4Op4LxKDPHAtoyg"
}

resource "google_compute_instance" "default" {
  name         = "sureshtest"
  machine_type = "e2-medium"
  zone         = "us-west4-a"

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size = 40
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

}
