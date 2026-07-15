# syntax=docker/dockerfile:1

ARG UV_VERSION=latest
FROM ghcr.io/astral-sh/uv:${UV_VERSION} AS uv

FROM node:24-trixie-slim

ARG DEBIAN_FRONTEND=noninteractive
ARG PNPM_VERSION=latest

COPY --from=uv /uv /uvx /usr/local/bin/

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    curl \
    file \
    git \
    jq \
    just \
    openssh-client \
    procps \
    python3 \
    python3-venv \
    ripgrep \
    unzip \
    && rm -rf /var/lib/apt/lists/*

RUN npm install --global "pnpm@${PNPM_VERSION}" \
    && npm cache clean --force

# ファイルシステム間のリンク警告を防ぎ、uvで導入したツールを全体から実行可能にする
ENV UV_LINK_MODE=copy \
    UV_TOOL_BIN_DIR=/usr/local/bin

WORKDIR /workspace

CMD ["bash"]
