FROM ubuntu:20.04

ARG  DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
        git \
        python3-dev  \
        python3-pip \
        neovim \
        unzip \
        wget \
        ffmpeg

RUN pip install --no-cache-dir \
        fastapi==0.63.0 \
        uvicorn==0.13.4 \
        requests==2.22.0 \
        python-multipart==0.0.5 \
        jupyterlab==3.0.12 \
        pandas==1.3.0 \
        numpy==1.21.0 \
        opencv-python-headless==4.5.2.54 \
        google-cloud-vision==2.3.2 \
        Pillow==8.3.1       
