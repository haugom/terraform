FROM alpine:latest
ADD https://releases.hashicorp.com/terraform/0.10.6/terraform_0.10.6_linux_amd64.zip /tmp/terraform.zip
RUN unzip /tmp/terraform.zip -d /usr/local/bin && \
  apk --no-cache add ca-certificates && update-ca-certificates && \
  rm -rf /tmp/terraform.zip
ENTRYPOINT ["/usr/local/bin/terraform"]
CMD ["--help"]
