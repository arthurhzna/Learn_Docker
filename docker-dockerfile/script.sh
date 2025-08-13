
# FROM Instruction
docker build -t arthur/from from

docker image ls

# RUN Instruction
docker build -t arthur/run run

docker build -t arthur/run run --progress=plain --no-cache

# CMD Instruction
docker build -t arthur/command command

docker image inspect arthur/command

docker container create --name command arthur/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t arthur/label label

docker image inspect arthur/label

# ADD Instruction
docker build -t arthur/add add

docker container create --name add arthur/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t arthur/copy copy

docker container create --name copy arthur/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t arthur/ignore ignore

docker container create --name ignore arthur/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t arthur/expose expose

docker image inspect arthur/expose

docker container create --name expose -p 8080:8080 arthur/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t arthur/env env

docker image inspect arthur/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 arthur/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t arthur/volume volume

docker image inspect arthur/volume

docker container create --name volume -p 8080:8080 arthur/volume

docker container start volume

docker container logs volume

docker container inspect volume

#15a53c9a60b9aaddb3c294cde03e6f283f319acf0db3e40c5d4b4a992a6451f1

docker volume ls

# WORKDIR Instruction
docker build -t arthur/workdir workdir

docker container create --name workdir -p 8080:8080 arthur/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t arthur/user user

docker container create --name user -p 8080:8080 arthur/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t arthur/arg arg --build-arg app=arthur

docker container create --name arg -p 8080:8080 arthur/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t arthur/health health

docker container create --name health -p 8080:8080 arthur/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t arthur/entrypoint entrypoint

docker image inspect arthur/entrypoint

docker container create --name entrypoint -p 8080:8080 arthur/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t arthur/multi multi

docker image ls

docker container create --name multi -p 8080:8080 arthur/multi

docker container start multi

# Docker Push
docker tag arthur/multi registry.digitalocean.com/arthurhzna/multi

docker --config /Users/arthur/.docker-digital-ocean/ push registry.digitalocean.com/arthurhzna/multi

docker --config /Users/arthur/.docker-digital-ocean/ pull registry.digitalocean.com/arthurhzna/multi