FROM node:15.8.0

ARG TF_VERSION
ARG CDKTF_VERSION
RUN set -ex; \
	\
	wget -O terraform.zip "https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip"; \
	unzip terraform.zip -d /bin; \
	rm -v terraform.zip;
RUN npm install -g cdktf-cli@${CDKTF_VERSION}
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]
CMD ["cdktf"]
WORKDIR /workdir
