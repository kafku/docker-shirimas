FROM python:3

MAINTAINER Kazuki Fukui

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
	git \
	mecab libmecab-dev mecab-ipadic-utf8 \
	sqlite3 libsqlite3-dev \
	python3-numpy python3-pandas
RUN apt-get clean

RUN pip install mecab-python3

RUN git clone https://github.com/oshikiri/SlackBot.git
RUN git clone https://github.com/oshikiri/shirimas.git

WORKDIR shirimas/src

CMD python3 autoexec.py

