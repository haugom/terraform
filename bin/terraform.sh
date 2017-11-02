#!/bin/bash

DIGITALOCEAN_TOKEN=$(cat ~/keys/terraform-digitalocean.token)

docker run \
  -it \
  --rm \
  -e DIGITALOCEAN_TOKEN=$DIGITALOCEAN_TOKEN \
  -v `pwd`:/workdir \
  -v ~/keys/account.json:/account.json:ro \
  -v ~/.ssh/id_rsa_terraform:/.ssh/id_rsa_terraform:ro \
  --workdir /workdir \
  --user $UID:$UID \
  terraform_cli \
  "$@"
