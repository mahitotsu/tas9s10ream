# Use a debian base image
FROM debian:stable-slim

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
    && rm -rf /var/lib/apt/lists/*

# Declare build arguments for UID and GID
ARG UID=1000
ARG GID=1000

# Create a group and user with the specified UID/GID
RUN if ! getent group ${GID} >/dev/null; then addgroup --gid ${GID} appgroup; fi \
    && if ! getent passwd ${UID} >/dev/null; then adduser --uid ${UID} --gid ${GID} --shell /bin/bash --disabled-password --gecos "" appuser; fi

# Install gemini-cli globally
RUN npm install -g @google/gemini-cli

# Switch to the new user
USER appuser

# Set the working directory in the container
WORKDIR /home/appuser/app

# Install uv using pipx
RUN pipx install uv
RUN pipx ensurepath

# Default command to keep the container running for interactive use
CMD ["tail", "-f", "/dev/null"]