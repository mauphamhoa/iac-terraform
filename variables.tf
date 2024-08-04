variable "machine_name" {
  type    = list(string)
  default = ["master", "worker"]
}

variable "ubuntu_image" {
  type = string
  default = "ubuntu:22.04-ssh-1"
}