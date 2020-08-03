FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update \
    && apt-get install -y \
    sudo \
    rclone \
    curl \
    neofetch

RUN curl https://rclone.org/install.sh | sudo bash
# USER jovyan
RUN jupyter labextension install @jupyterlab/google-drive
RUN jupyter labextension install DavidZhang73/jupyterlab-atom-one-dark-theme
RUN echo 'neofetch' >> ~/.bashrc
ADD . . 