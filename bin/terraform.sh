#!/bin/bash

docker run \
  -it \
  --rm \
  -v `pwd`:/workdir \
  --user $UID:$UID \
  terraform_cli \
  "$@"
