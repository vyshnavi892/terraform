variable "project" {
  description = "The GCP project ID"
  type        = string
   default = "cool-lambda-454214-q5"

}

variable "region" {
  description = "The GCP region"
  type        = string
  default = "us-centarl-1"
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default = "us-central1-a"
}

variable "os_image" {
  description = "The OS image to use for the instance"
  type        = string
}