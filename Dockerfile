FROM gcr.io/tensorflow/tensorflow:1.2.0-rc1-gpu-py3

### Install tools
RUN apt-get update && apt-get install -y \
    vim tmux git

### Install python modules
RUN pip install tqdm

RUN apt-get clean
RUN rm -rf /docker_build
RUN rm -rf /tmp/* /var/tmp/*
RUN rm -rf /var/lib/apt/lists/*

RUN rm -f /etc/ssh/ssh_host_*

