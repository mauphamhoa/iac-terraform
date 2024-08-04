output "container" {
  value = {
    for i,container in docker_container.container : format("ip_address%d", i + 1) => container.network_data[0].ip_address
  }
}