terraform {
  backend "gcs" {
    bucket = "state-jenkins"
    prefix = "terraform/state"
  }
}
