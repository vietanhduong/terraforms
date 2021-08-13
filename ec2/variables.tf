variable "key_name" {
  type = string 
  default = ""
}

variable "public_key" {
  type = string 
  default = ""
}

variable "instance_name" {
  type = string
} 

variable "owner" {
  type = string
  default = "terraform"
} 

variable "instance_type" {
  type = string
  default = "t2.medium"
}

variable "image" {
  type = string 
  default = "ami-05b891753d41ff88f"
}

variable "region" {
  type = string 
  default = "ap-southeast-1"
}

variable "availability_zone" {
  type = string 
  default = "ap-southeast-1c"
}

variable "disk_size" {
  type = number
  default = 50
}
