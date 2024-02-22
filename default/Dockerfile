FROM quay.io/pangeo/pangeo-notebook:2023.10.28

# Install requirements using conda (mamba)
COPY requirements.txt /tmp/requirements.txt
RUN mamba install -y -n notebook -c conda-forge --file /tmp/requirements.txt && \
    mamba clean --all --yes

USER root

# Install OS-package repo packages
COPY apt.txt /tmp/apt.txt
RUN apt update && \
    xargs -a /tmp/apt.txt apt install -y  && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Cleanup HOME
RUN rm -rf $HOME/*

USER ${NB_USER}