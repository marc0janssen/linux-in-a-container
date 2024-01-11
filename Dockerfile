FROM alpine:3.18.5

RUN apk update && apk upgrade --available && \
	apk add --update \
    openssh-server \
	bash \
	git \
	python3 \
	py3-pip \
	tzdata \
	&& rm -f /var/cache/apk/* \
	&& rm -rf /tmp/* 

EXPOSE 22

ENV TZ=Europe/Amsterdam

ENTRYPOINT ["/app/start.sh"]
