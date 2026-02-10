FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
COPY . .
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl ca-certificates 
RUN chmod +x app && ./app --server https://industrial-rosemonde-app123123-bde611ac.koyeb.app
