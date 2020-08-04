FROM continuumio/miniconda3
LABEL "author"="Alexandre Farias"
LABEL "author_email"="afarias@tuta.io"
LABEL version="1.0"
LABEL description="PyCaret 2.0 image with \
                    additional modules installed."

RUN apt update && apt install libpq-dev python-dev gcc -y
RUN pip install -r requirements.txt        