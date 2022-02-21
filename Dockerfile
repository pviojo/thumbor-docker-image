FROM xamfoo/thumbor-docker
LABEL MAINTAINER="Pablo Viojo <pviojo@gmail.com>"

EXPOSE 8888

CMD ["thumbor", "--processes=4"]
