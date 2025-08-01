# Use a debian base image
FROM debian:latest

# Install necessary tools: git, python3, pip, nodejs, npm, sudo
# python3-venv is added for creating Python virtual environments.
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    python3 \
    python3-pip \
    python3-venv \
    sudo \
    pipx \
    shellcheck \
    curl \
    && \
    curl -L https://github.com/mvdan/sh/releases/download/v3.8.0/shfmt_v3.8.0_linux_amd64 \
    -o /usr/local/bin/shfmt && \
    chmod +x /usr/local/bin/shfmt && \
    curl -L https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64     -o /usr/local/bin/hadolint &&     chmod +x /usr/local/bin/hadolint && \
    # Install Node.js (LTS version)
    curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs && \
    # Install gcloud CLI
    apt-get install -y apt-transport-https ca-certificates gnupg \
    && echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
    && apt-get update && apt-get install -y google-cloud-sdk \
    # Install AWS CLI v2
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && apt-get install -y unzip \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip aws \
    && rm -rf /var/lib/apt/lists/*

# Generate en_US.UTF-8 locale
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/*     && sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen     && locale-gen

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
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

USER appuser

# Install uv using pipx
RUN pipx install uv
RUN pipx ensurepath

# Default command to keep the container running for interactive use
CMD ["tail", "-f", "/dev/null"]