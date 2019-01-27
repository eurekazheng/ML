FROM nvidia/cuda:10.0-devel-ubuntu16.04
MAINTAINER Eureka Zheng <zhengeureka@gmail.com>
# Install basic packages
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        git \
        wget \
        libopencv-dev \
        python-dev \
        python-pip \
        tzdata \
        vim
# Install miniconda3 in silent mode
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
        -O ~/miniconda3.sh && \
        bash ~/miniconda3.sh -b -p $HOME/miniconda3 && \
        rm ~/miniconda3.sh && \
        echo "export PATH=$HOME/miniconda3/bin:$PATH" >> ~/.bashrc
# Set timezone
RUN ln -sf /usr/share/zoneinfo/US/Eastern /etc/localtime
# Set locale
ENV LANG C.UTF-8 LC_ALL=C.UTF-8
# Setup workspace
RUN mkdir /workspace
WORKDIR /workspace