# Dockerfile to build a prebuilt image to run this example on mybinder.org.
FROM node:lts-bullseye

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
	&& apt-get install -y --no-install-recommends \
	cmake \
	curl \
	fzf \
	libzmq3-dev \
	zsh \
	&& rm -rf /var/lib/apt/lists/*

# Support UTF-8 filename in Python (https://stackoverflow.com/a/31754469)
ENV LC_CTYPE=C.UTF-8

# Install tslab
RUN npm install -g tslab \
	&& tslab install

# Notes:
# 2. To use JupyterNotebook, replace "lab" with notebook".
# 3. Set --allow-root in case you want to run jupyter as root.
CMD ["jupyter", "lab", "--ip=0.0.0.0"]