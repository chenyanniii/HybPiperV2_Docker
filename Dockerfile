FROM ubuntu:18.04
ENV PATH="/root/miniconda3/bin:${PATH}"
ARG PATH="/root/miniconda3/bin:${PATH}"

RUN mkdir -p /hybpiper2

WORKDIR /hybpiper2

RUN apt-get update 

RUN apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget \
    https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && mkdir /root/.conda \
    && bash Miniconda3-latest-Linux-x86_64.sh -b \
    && rm -f Miniconda3-latest-Linux-x86_64.sh 

RUN conda config --add channels defaults 
RUN conda config --add channels bioconda 
RUN conda config --add channels conda-forge 

# conda init place code in the .bashrc file 
# the PATH environment variable by prepending it to the path of the base conda environment.
RUN conda init bash \
&& conda install -n base -c conda-forge mamba \
&& mamba create -c chrisjackson-pellicle -n hybpiper_V2_sprint hybpiper

# RUN conda create -n hybpiperV2 -c chrisjackson-pellicle hybpiper



##################################################
## be sure this is the last!
COPY . /hybpiper2