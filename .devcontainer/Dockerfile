# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.205.2/containers/dotnet/.devcontainer/base.Dockerfile
# [Choice] .NET version: 6.0, 5.0, 3.1, 6.0-bullseye, 5.0-bullseye, 3.1-bullseye, 6.0-focal, 5.0-focal, 3.1-focal
ARG VARIANT="7.0-bullseye-slim"
FROM mcr.microsoft.com/vscode/devcontainers/dotnet:0-${VARIANT}

# [Choice] Node.js version: none, lts/*, 16, 14, 12, 10
ARG NODE_VERSION="16"
RUN if [ "${NODE_VERSION}" != "none" ]; then su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"; fi

# Install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
	&& apt-get -y install --no-install-recommends \
	cmake \
	curl \
	fzf \
	git \
	libzmq3-dev \
	python3-pip \
	sudo \
	zsh \
	&& rm -rf /var/lib/apt/lists/* \
	&& pip3 install --no-cache-dir -U jupyterlab

# Install git-lfs
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash \
    && sudo apt-get install git-lfs

# Error needs interactive?
# RUN dotnet tool install -g Microsoft.dotnet-interactive 
# RUN dotnet-interactive jupyter install


# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1