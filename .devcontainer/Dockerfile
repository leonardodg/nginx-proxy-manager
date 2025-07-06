FROM docker.io/jc21/nginx-proxy-manager:latest

RUN \
	apt-get update \
	&& apt-get install -y --no-install-recommends rsync \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	;

RUN \
	mkdir /origin \
	&& mv /opt /origin/opt \
	;

COPY persist-permissions.sh /persist-permissions.sh
RUN chmod +x /persist-permissions.sh
ENTRYPOINT ["/persist-permissions.sh"]