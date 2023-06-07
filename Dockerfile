FROM nvidia/cuda:11.7.1-base-ubuntu22.04

ENV SHELL=/bin/bash

# Basic Linux tools
RUN apt-get update && apt-get install -y \
    python3-pip \
    apt-utils \
    vim \
    git \
    nano

RUN ln -s /usr/bin/python3 /usr/bin/python

# Basic
RUN pip install \
    numpy \
    pandas \
    scipy \
    scikit-learn \
    nvitop

# Torch dependencies
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu117

# Transformers
RUN pip install transformers
    
# Jupyter 
RUN pip install jupyterlab ipywidgets

RUN mkdir /jupyter

COPY ./app /app
COPY ./test /test
COPY ./notebooks /jupyter/notebooks

WORKDIR /jupyter
# start jupyter lab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
EXPOSE 8888