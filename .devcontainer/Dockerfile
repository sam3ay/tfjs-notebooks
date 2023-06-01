# Dockerfile to build a prebuilt image to run this example on mybinder.org.
FROM node:lts-bullseye

RUN apt update && export DEBIAN_FRONTEND=noninteractive \
	&& apt install -y --no-install-recommends \
	cmake \
	curl \
	fzf \
	libzmq3-dev \
	python3-pip \
	zsh \
	&& rm -rf /var/lib/apt/lists/* \
	&& pip3 install --no-cache-dir -U jupyterlab

# Support UTF-8 filename in Python (https://stackoverflow.com/a/31754469)
ENV LC_CTYPE=C.UTF-8

# Check the uid of node is 1000 to follow the convention of mybinder to use this image from mybinder.org.
# https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html#preparing-your-dockerfile
# Notes:
# Don't use ARG NB_USER here. It's overwritten with jovyan.
ENV HOME /home/node
RUN id -u node | grep -c "^1000$"
USER node
WORKDIR ${HOME}

# Install tslab
ENV PATH $PATH:${HOME}/.npm-global/bin
RUN mkdir ~/.npm-global \
	&& npm config set prefix '~/.npm-global' \
	&& npm install -g tslab \
	&& tslab install

# Notes:
# 2. To use JupyterNotebook, replace "lab" with notebook".
# 3. Set --allow-root in case you want to run jupyter as root.
CMD ["jupyter", "lab", "--ip=0.0.0.0"]