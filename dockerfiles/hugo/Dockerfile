FROM node
LABEL author="developer@ajonp.com"

# Set debconf to run non-interactively
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Install base dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y -q --no-install-recommends \
        apt-transport-https \
        asciidoc \
        build-essential \
        ca-certificates \
        curl \
        git \
        libssl-dev \
        python \
        python-pygments \
        rsync \
        software-properties-common \
        devscripts \
        autoconf \
        ssl-cert \
    && apt-get clean

# Download and install hugo
ENV HUGO_VERSION 0.51
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb

#ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} /tmp/hugo.deb
RUN curl -sL -o /tmp/hugo.deb \
    https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} && \
    dpkg -i /tmp/hugo.deb && \
    rm /tmp/hugo.deb

# confirm hugo
RUN hugo env