# nextflow-test-engine
Dockerfile to create a nextflow-engine for the pipeline-microservices that is used for the integration tests

## Create docker image

```
$ docker build -t [USER]/[IMAGENAME] .
```

## Launch image as daemon

```
$ docker run -itd --name nextflow-engine [USER]/[IMAGENAME] /bin/bash
```

## Run nextflow example pipeline

```
$ docker exec nextflow-engine nextflow run hello
```
