FROM python:3

MAINTAINER Kazuki Fukui

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
	git \
	mecab libmecab-dev mecab-ipadic-utf8 \
	sqlite3 libsqlite3-dev
RUN apt-get -y autoremove
RUN apt-get clean

RUN pip install mecab-python3 numpy pandas requests

RUN git clone https://github.com/oshikiri/shirimas.git

WORKDIR shirimas/src
RUN git submodule init
RUN git submodule update
RUN touch mysetup.py

VOLUME /shirimas/src/db
CMD python3 autoexec.py

