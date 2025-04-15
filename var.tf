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

variable "credentials" {
  type = string
  default = "C:/Users/vvyshnavi2/terrform/compute engine/keys.json"
  description = "path of service acc key"
}
variable "my-vpc" {
  type = string
  default = "my-vpc"
  description = "name of the vpc"
}
variable "subnetwork" {
  type = string
  default = "subnetwork"
  description = "name of the subnet"
}
variable "subnet_cidr" {
  type = string
  default = "10.8.0.0/23"
  description = "range of cidr"
}
variable "instance_type" {
  type = string
  default = "vyshu"
  description = "name of the instance"
}
variable "machine_type" {
  type = string
  default = "e2-medium"
  description = "machine type"
  
}
variable "zone" {
  description = "The GCP zone"
  type        = string
  default = "us-central1-a"
}
variable "os_image" {
  description = "OS image for the instance"
  type        = string
  default = "debian-cloud/debian-11"
}