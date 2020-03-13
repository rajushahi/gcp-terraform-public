# GCP NETWORK
variable "vpc_name" {
  description = "Name of vpc"
  default = "app-main"
}

variable "subnet_cidr" {
  description = "IP cidr"
  default = "10.10.0.0/24"
}

# GCP VMS
variable "vms_name" {
  description = "Name of instance"
  default ="ddn-vm-main"
}

variable "image" {
  description = "OS"
  default ="ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "machine_type" {
  description = "Machine instance type"
  default ="n1-standard-1"
}

variable "network" {
  description = "VPC name"
  default = "app-main"
}

variable "zone" {
  description = "Availability zone"
  default = "europe-north1-a"
}


# GCP DEFAULT VALUES
variable "region" {
  description = "Region"
  default = "europe-north1"
}

variable "gcp_project" {
  description = "Project name"
  default = "app-main"
}

variable "credentials" {
  description = "File name of json path"
  default = "~/projects/keys/example.json"
}

variable "private_key_path" {
  description = "Path to private key"
  default = "/home/users/.ssh/id_rsa"
}

variable "user" {
  description = "SSH username"
  default = "users"
}

# GCP storage

variable "bucket_name" {
  type = "list"
  default = ["main-db","main-files"]
}


variable "storage_class" {
  description = "Storage class for bucket"
  default = "COLDLINE"
}
