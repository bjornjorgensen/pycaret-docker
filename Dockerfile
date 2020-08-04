FROM continuumio/miniconda3
LABEL maintainer="author"="Alexandre Farias<afarias@tuta.io>"
LABEL version="1.0"
LABEL description="PyCaret 2.0 image with \
                    additional modules installed."

ARG NB_USER="Kobashi"
ARG NB_UID="1000"
ARG NB_GID="100"

USER $NB_UID
WORKDIR $HOME
COPY requirements.txt /tmp/
RUN apt update && apt install libpq-dev python-dev gcc -y
RUN pip install -r /tmp/requirements.txt
COPY . /tmp/ 
EXPOSE 8888       