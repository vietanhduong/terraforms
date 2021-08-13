variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}

variable "instance_name" {
  type = string
}

variable "ip_cidr_range" {
  type    = string
  default = "10.0.0.0/8"
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "zone" {
  type    = string
  default = "asia-southeast1-b"
}

variable "boot_image" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "disk_size" {
  type    = number
  default = 50
}

variable "ssh_keys" {
  type = list(object({
    username   = string
    public_key = string
  }))
  default = []
}