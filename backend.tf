terraform {
  backend "gcs" {
    bucket      = "tf-state"
    prefix      = "terraform/state"
    credentials = "./sentiment-analysis-450917-1ff48b5f1891.json"
  }
}
