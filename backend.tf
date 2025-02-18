terraform {
  backend "gcs" {
    bucket = "sentiment-analysis-450917-tf-bucket"
    prefix = "terraform/state"
  }
}
