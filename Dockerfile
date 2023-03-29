FROM mcr.microsoft.com/vscode/devcontainers/python:0-3.10
# FROM mcr.microsoft.com/devcontainers/base:jammy

ARG DEBIAN_FRONTEND=noninteractive
ARG USER=vscode

RUN DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y build-essential --no-install-recommends make \
        ca-certificates \
        git \
        libssl-dev \
        zlib1g-dev \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        wget \
        curl \
        llvm \
        libncurses5-dev \
        xz-utils \
        tk-dev \
        libxml2-dev \
        libxmlsec1-dev \
        libffi-dev \
        liblzma-dev \
        libudev-dev \
        bluez

WORKDIR /workspaces/python-luxafor

RUN pipx uninstall black
RUN pipx uninstall pydocstyle
RUN pipx uninstall pycodestyle
RUN pipx uninstall mypy
RUN pipx uninstall pylint
