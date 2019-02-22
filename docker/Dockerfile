FROM alpine:3.9
MAINTAINER pablo.mansilla@ibm.com

USER root
RUN apk update && apk upgrade && \
	apk add nodejs npm make python && \
	npm install -g apiconnect

ENV HOST 0.0.0.0
ENV PORT 9090
ENV SKIP_LOGIN true
EXPOSE 9090
WORKDIR /services
CMD ["apic", "edit", "--accept-license"]
