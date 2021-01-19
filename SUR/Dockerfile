# kahnchana/pytorch:v0
FROM nvidia/cuda:10.2-runtime-ubuntu18.04

ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

RUN apt-get update
RUN apt-get install -y wget && rm -rf /var/lib/apt/lists/*
RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh
RUN conda --version

RUN conda install python=3.7
RUN conda install pytorch torchvision torchaudio cudatoolkit=10.1 -c pytorch

RUN pip install numpy~=1.18.5
RUN pip install tqdm~=4.54.0
RUN pip install tensorflow~=1.15
RUN pip install gin-config~=0.4.0
RUN pip install tabulate~=0.8.7

ENV HOME /home/kanchanaranasinghe