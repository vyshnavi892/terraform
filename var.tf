variable "project" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
}

variable "credentials" {
  type = string
  description = "path of service acc key"
}
variable "my-vpc" {
  type = string
  description = "name of the vpc"
}
variable "subnetwork" {
  type = string
  description = "name of the subnet"
}
variable "subnet_cidr" {
  type = string
  description = "range of cidr"
}
variable "instance_type" {
  type = string
  description = "name of the instance"
}
variable "machine_type" {
  type = string
  description = "machine type"
  
}
variable "zone" {
  description = "The GCP zone"
  type        = string
}
variable "os_image" {
  description = "OS image for the instance"
  type        = string
}