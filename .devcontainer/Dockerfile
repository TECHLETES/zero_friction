FROM mcr.microsoft.com/devcontainers/python:1-3.12-bookworm

ARG USERNAME=vscode
ARG UV_VERSION=0.9.25

ADD https://astral.sh/uv/${UV_VERSION}/install.sh /tmp/uv-installer.sh

RUN env UV_UNMANAGED_INSTALL="/usr/local/bin" sh /tmp/uv-installer.sh \
    && rm /tmp/uv-installer.sh

# Install direnv (Added by Michaël: 7-5-2026)
RUN rm -f /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    bubblewrap \
    socat \
    curl \
    direnv \
    && rm -rf /var/lib/apt/lists/*

# Install 1Password CLI (Added by Michaël: 7-5-2026)
RUN curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" | tee /etc/apt/sources.list.d/1password.list \
    && apt-get update \
    && apt-get install -y --no-install-recommends 1password-cli \
    && rm -rf /var/lib/apt/lists/*

# Codex CLI ships as an npm package and requires Node.js 22+.
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get update \
    && apt-get install -y --no-install-recommends nodejs \
    && npm install -g @openai/codex \
    && codex --version \
    && rm -rf /var/lib/apt/lists/*

ENV PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PYTHONDONTWRITEBYTECODE=1

RUN mkdir -p /home/${USERNAME}/.cache/uv /home/${USERNAME}/.cache/pre-commit \
    && chown -R ${USERNAME}:${USERNAME} /home/${USERNAME}/.cache
