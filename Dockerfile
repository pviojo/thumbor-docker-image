FROM debian:stretch-slim

LABEL maintainer="Werkspot <technology@werkspot.com>"

WORKDIR /app

RUN \
    apt-get update -qqq && apt-get install -qqqy \
    python-pip libcurl4-openssl-dev libssl-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ARG THUMBOR_VERSION=6.7.5
RUN pip install thumbor==${THUMBOR_VERSION} tc_prometheus tc_aws
RUN /usr/local/bin/thumbor-config > /app/thumbor.conf

COPY thumbor.sh /app/thumbor.sh
CMD /app/thumbor.sh