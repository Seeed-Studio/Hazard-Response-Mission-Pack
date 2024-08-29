FROM debian:12.6-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    libcairo2-dev \
    libpango1.0-dev \
    libconfig-dev \
    libgpiod2 \
    libjpeg-dev \
    libgif-dev \
    librsvg2-dev \
    git \
    pkg-config \
    wget \
    supervisor \
    ffmpeg \
    supervisor \
    bash \
    tzdata \
    curl \
    nano \
    openssl \
    openssh-client \
    ca-certificates \
    python3 \
    python3-pip

RUN apt-get clean && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
