FROM debian:jessie

RUN apt-get -q -y update && apt-get -q -y upgrade \
    && DEBIAN_FRONTEND=noninteractive apt-get -q -y install python-dev \
                                                            python-pip \
                                                            python-virtualenv \
                                                            libpq-dev \
                                                            git-core \
    && apt-get -q clean
