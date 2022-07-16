FROM condaforge/mambaforge:4.12.0-2
ENV PATH="/root/mambaforge/bin:${PATH}"
ARG PATH="/root/mambaforge/bin:${PATH}"

RUN mkdir -p /hybpiper2

RUN conda config --add channels bioconda 
RUN conda config --add channels conda-forge 

RUN mamba create -c chrisjackson-pellicle -n hybpiper_V2_sprint hybpiper

##################################################
## be sure this is the last!
COPY . /hybpiper2