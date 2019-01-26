FROM nvidia/cuda
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
        vim
# Install Anaconda in Silent Mode
RUN wget https://repo.anaconda.com/anaconda/anaconda3-latest-Linux-x86_64.sh \
        -O ~/anaconda.sh && \
        bash ~/anaconda.sh -b -p $HOME/anaconda && \
        rm ~/anaconda.sh && \
        echo "export PATH=$HOME/anaconda/bin:$PATH" >> ~/.bashrc
# Setup workspace
RUN mkdir /workspace
WORKDIR /workspace