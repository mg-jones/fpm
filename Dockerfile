FROM ubuntu:18.04
MAINTAINER Mike Jones <michael.jones987@gmail.com>

RUN apt-get update && apt-get install -y \
    build-essential \
    python2.7 \
    python-simplejson \
    ruby \
    ruby-dev \
    rubygems \
    && gem install --no-ri --no-rdoc fpm \
    && rm -rf /var/libe/apt/lists/*

ENTRYPOINT ["fpm"]
CMD ["--help"]
