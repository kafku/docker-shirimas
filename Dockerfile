FROM python:3

MAINTAINER Kazuki Fukui

RUN apt-get update
RUN apt-get install -y git python-mecab sqlite3 libsqlite3-dev
RUN apt-get clean

RUN pip install sqlite3 numpy pandas mecab-python3

git clone https://github.com/oshikiri/SlackBot.git
git clone https://github.com/oshikiri/shirimas.git

WORKDIR shirimas/src

CMD python3 autoexec.py

