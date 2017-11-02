Building a docker image to embed terraform binary.
---

`docker-compose build`

copy or link bin/terraform.sh to e.g. ~/.local/bin/terraform

`terraform --version`

shell script will invoke docker container with terraform and mount current working directory to process making it available to terraform.

Note:
- My example I have a `~/keys/account.json` with credentials to google cloud
- `~/.ssh/id_rsa_terraform`, an RSA private/public key without password
- `~/keys/terraform-digitalocean.token` with a token to access my digital ocean resources.

These files are obviously not included in this project.
