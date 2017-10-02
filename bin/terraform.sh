#!/bin/bash

docker run \
  -it \
  --rm \
  -v `pwd`:/workdir \
  -v ~/keys/account.json:/account.json:ro \
  --workdir /workdir \
  --user $UID:$UID \
  terraform_cli \
  "$@"
