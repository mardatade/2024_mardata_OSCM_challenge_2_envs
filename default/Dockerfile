FROM quay.io/pangeo/pangeo-notebook:2023.10.28

USER root

# Install requirements using conda (mamba)
COPY requirements_conda.txt /tmp/requirements_conda.txt
RUN mamba install -y -n notebook -c conda-forge --file /tmp/requirements_conda.txt && \
    mamba clean --all --yes

# Install requirements using pip
COPY requirements_pip.txt /tmp/requirements_pip.txt
RUN python -m pip install --no-cache-dir -r /tmp/requirements_pip.txt \
    && rm -Rf /root/.cache/pip

# Install OS-package repo packages
COPY apt.txt /tmp/apt.txt
RUN apt update && \
    xargs -a /tmp/apt.txt apt install -y  && \
    apt clean && rm -rf /var/lib/apt/lists/*

# Cleanup HOME
RUN rm -rf $HOME/*

USER ${NB_USER}