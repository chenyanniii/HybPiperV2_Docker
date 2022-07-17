FROM condaforge/mambaforge:4.12.0-2
ENV PATH="/root/mambaforge/bin:${PATH}"

RUN apt update && apt install time

RUN mkdir -p /hybpiper2 \
    && conda config --add channels bioconda \
    && conda config --add channels conda-forge \
    && mamba create -y -n hybpiper_V2_sprint -c chrisjackson-pellicle hybpiper

##################################################
## be sure this is the last!
## COPY . /hybpiper2
