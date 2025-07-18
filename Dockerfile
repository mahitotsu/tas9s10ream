# Use a debian base image
FROM debian:bookworm-slim

# Install necessary tools: git, python3, pip, nodejs, npm, sudo
# python3-venv is added for creating Python virtual environments.
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    npm \
    sudo \
    pipx \
    shellcheck \
    curl \
    && \
    curl -L https://github.com/mvdan/sh/releases/download/v3.8.0/shfmt_v3.8.0_linux_amd64 \
    -o /usr/local/bin/shfmt && \
    chmod +x /usr/local/bin/shfmt && \
    curl -L https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64 \
    -o /usr/local/bin/hadolint && \
    chmod +x /usr/local/bin/hadolint && \
    rm -rf /var/lib/apt/lists/*

# Declare build arguments for HOST_UID and HOST_GID
ARG HOST_UID=1000
ARG HOST_GID=1000

# Create a group and user with the specified HOST_UID/HOST_GID
RUN if ! getent group ${HOST_GID} >/dev/null; then \
    addgroup --gid ${HOST_GID} appgroup; \
    fi && \
    if ! getent passwd ${HOST_UID} >/dev/null; then \
    adduser --uid ${HOST_UID} --gid ${HOST_GID} --shell /bin/bash \
    --disabled-password --gecos "" appuser; \
    fi

# Install gemini-cli globally
RUN npm install -g @google/gemini-cli

# Switch to the new user
USER appuser

# Install uv using pipx
RUN pipx install uv
RUN pipx ensurepath

# Default command to keep the container running for interactive use
CMD ["tail", "-f", "/dev/null"]