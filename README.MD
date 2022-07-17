This is a repository contains a Dockerfile to build image and run the Docker container. The container contains [HybPiper 2.0.1](https://github.com/mossmatters/HybPiper). 

The general procedure of building this container: 
1. download the Dockerfile to build a docker image
2. run docker image to build a docker container with `--bind` of binding local a folder into the docker container. 
3. run HybPiper inside the container. Before running the real data, the container can be tested through running [test dataset from github page](https://github.com/mossmatters/HybPiper/blob/master/test_dataset.tar.gz).

P.S. A built Docker container is available on [docker hub](https://hub.docker.com/repository/docker/chenyanniii/hybpiperv2_sprint). And some sample scripts of running the container was written on [HackMD](https://hackmd.io/momc2t3OTRqdDvM2VSzqlw?edit)



