FROM mcr.microsoft.com/devcontainers/python:1-3.12-bookworm

ARG USERNAME=vscode
ARG UV_VERSION=0.9.25

ADD https://astral.sh/uv/${UV_VERSION}/install.sh /tmp/uv-installer.sh

RUN env UV_UNMANAGED_INSTALL="/usr/local/bin" sh /tmp/uv-installer.sh \
    && rm /tmp/uv-installer.sh

RUN rm -f /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        bubblewrap \
        socat \
    && rm -rf /var/lib/apt/lists/*

ENV PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PYTHONDONTWRITEBYTECODE=1

RUN mkdir -p /home/${USERNAME}/.cache/uv /home/${USERNAME}/.cache/pre-commit \
    && chown -R ${USERNAME}:${USERNAME} /home/${USERNAME}/.cache
