FROM python:3.7-slim
LABEL MAINTAINER="Pablo Viojo <pviojo@gmail.com>"

RUN apt-get update && apt-get install -y libjpeg-dev zlib1g-dev

RUN pip install --upgrade pip
RUN pip install opencv-python-headless

WORKDIR /app
ADD ./src /app/

RUN python setup.py install

EXPOSE 8888

CMD ["thumbor", "--processes=4"]
