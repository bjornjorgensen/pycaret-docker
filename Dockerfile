# Base Image
FROM jupyter/minimal-notebook
# Metadata
LABEL maintainer="author"="Alexandre Farias<afarias@tuta.io>"
LABEL version="1.0"
LABEL description="PyCaret 2.0 image with additional modules installed."
# Install Python Packages
RUN conda update -n base -c defaults conda
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
# Install shap via COnda to avoid errors
RUN conda install -c conda-forge shap
# Exposed Port for MLFlow
EXPOSE 5000       