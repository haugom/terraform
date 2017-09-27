Building a docker image to embed terraform binary.

`docker-compose build`

copy or link bin/terraform.sh to e.g. ~/.local/bin/terraform

terraform --version

shell script will invoke docker container with terraform and mount current working directory to process making it available to terraform.
