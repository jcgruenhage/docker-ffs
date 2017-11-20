FROM docker.io/jcgruenhage/baseimage-alpine
MAINTAINER Jan Christian Grünhage <jan.christian@gruenhage.xyz>

WORKDIR	/ffs
RUN	apk add --update \
		build-base \
		python2 \
		python2-dev \
		py-virtualenv \
		py2-pysqlite \
		git \
	&& git clone https://github.com/mozilla-services/syncserver.git /ffs \
	&& make build 

CMD	["make", "serve"]
