FROM nvcr.io/nvidia/pytorch:22.11-py3
WORKDIR /opt/

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install build-essential \
    libssl-dev libgl1 libglib2.0-0 git vim fish wget
RUN apt-get install -y pkg-config

RUN pip install einops==0.5.0 timm==0.5.4 wandb==0.12.17 omegaconf imgaug==0.4.0

WORKDIR /workspace/
WORKDIR /project/