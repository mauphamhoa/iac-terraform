resource "docker_network" "k8s_cluster" {
  name   = "k8s_cluster"
  driver = "bridge"
}

resource "docker_container" "container" {
  count    = length(var.machine_name)
  name     = var.machine_name[count.index]
  image    = var.ubuntu_image
  hostname = var.machine_name[count.index]
  command  = ["sleep", "infinity"]
  networks_advanced {
    name = docker_network.k8s_cluster.name
  }
  ports {
    internal = 22
  }
}

