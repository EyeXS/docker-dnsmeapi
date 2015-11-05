FROM debian:jessie
MAINTAINER Sam Crang <sam.crang@gmail.com>

RUN apt-get update
RUN apt-get install -y \
      libdigest-hmac-perl \
      libhttp-date-perl \
      curl

RUN mkdir -p /opt/dnsmeapi
COPY dnsmeapi.pl /opt/dnsmeapi/

ENTRYPOINT ["perl", "/opt/dnsmeapi/dnsmeapi.pl"]
