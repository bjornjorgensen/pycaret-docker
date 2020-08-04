FROM continuumio/miniconda3
LABEL maintainer="author"="Alexandre Farias<afarias@tuta.io>"
LABEL version="1.0"
LABEL description="PyCaret 2.0 image with\
                    additional modules installed."

WORKDIR /app
COPY requirements.txt /tmp/
RUN apt update && apt install libpq-dev python-dev gcc -y
RUN pip install -r /tmp/requirements.txt
RUN conda install -c conda-forge shap
EXPOSE 8888
EXPOSE 5000       