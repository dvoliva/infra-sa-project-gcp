terraform {
  backend "gcs" {
    bucket      = "sentiment-analysis-450917-tf-bucket"
    prefix      = "terraform/state"
    #credentials = "./sentiment-analysis-450917-1ff48b5f1891.json"
  }
}
