#!/bin/bash

docker run \
  -it \
  --rm \
  -v `pwd`:/workdir \
  -- workdir /workdir \
  --user $UID:$UID \
  terraform_cli \
  "$@"
