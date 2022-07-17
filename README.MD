This is a repo for creating a Docker image for Docker container, which include HybPiper2 (https://github.com/mossmatters/HybPiper). 

The general procedure include: 
1. download the Dockerfile to build a docker image
2. run docker image to build a docker container with `--bind` of binding local a folder into the docker container. 
3. run HybPiper inside the container. Before running the real data, the container can be tested through running test dataset from github page.

P.S. A built Docker container is available on [docker hub](https://hub.docker.com/repository/docker/chenyanniii/hybpiperv2_sprint). And some sample scripts of running the container was written on [HackMD](https://hackmd.io/momc2t3OTRqdDvM2VSzqlw?edit)



