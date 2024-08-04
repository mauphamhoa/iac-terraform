# docker

terraform plan -parallelism=2

terraform destroy -auto-approve

# docker build docker/ -t ubuntu:22.04-ssh

terraform apply -auto-approve

docker exec -ti master service ssh start
docker exec -ti worker service ssh start