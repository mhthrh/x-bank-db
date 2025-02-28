FROM postgres:latest

LABEL maintainer="Mohsen Taheri m.rozbehani@outlook.com"
LABEL version="v1.0.1"
LABEL description="com.x-bank.db"

RUN apt update && apt install vim -y && apt install make -y && apt-get update && apt-get install -y bash

ENV POSTGRES_DB=postgres
ENV POSTGRES_USER=root
ENV POSTGRES_PASSWORD=123456

COPY ./init/init.sql /docker-entrypoint-initdb.d/
EXPOSE 5432
