terraform {
  backend "gcs" {
    bucket = "infra-back"
    prefix = "terraform/state"
  }
}
