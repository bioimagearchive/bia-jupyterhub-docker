FROM jupyter/datascience-notebook:hub-1.3.0
USER root

RUN apt-get update \
    && apt-get install -y \
    sudo \
    rclone \
    curl \
    neofetch

RUN curl https://rclone.org/install.sh | sudo bash
# RUN jupyter labextension install @jupyterlab/google-drive
# RUN jupyter labextension install DavidZhang73/jupyterlab-atom-one-dark-theme
USER jovyan
RUN echo 'neofetch' >> ~/.bashrc
ADD . example_notebooks