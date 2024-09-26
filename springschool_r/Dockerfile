FROM rocker/binder:4.4.1
# https://github.com/rocker-org/rocker-versioned2/wiki

USER root

RUN apt update \
 && apt install --no-install-recommends --yes htop \
 && rm -rf /var/lib/apt/lists/*

ADD install-pkgs.R /install-pkgs.R
RUN Rscript /install-pkgs.R 1> /dev/null

ENV LANG=C.UTF-8
ENV TZ=Atlantic/Cape_Verde
ENV SHELL=/bin/bash

RUN ln -s /home/jovyan/shared_materials/ shared_materials \
 && ln -s /home/jovyan/shared_data/ shared_data \
 && ln -s /home/jovyan/my_materials/ my_materials

USER rstudio

