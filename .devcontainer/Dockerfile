FROM python:latest

RUN apt update
RUN apt upgrade -y
RUN apt autoremove --purge -y

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
