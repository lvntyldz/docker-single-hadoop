# Hadoop Docker Image
[![Go to Docker Hub](https://img.shields.io/badge/Docker%20Hub-%E2%86%92-blue.svg)](https://registry.hub.docker.com/u/leventyildiz/docker-single-hadoop/)

A Docker container for single node hadoop.

## Installation

The easiest way to get this docker image installed is to pull the latest version from the docker registry:

```
$ docker pull leventyildiz/docker-single-hadoop
```

or build from scratch:

```sh
$ git clone https://github.com/leventyildiz/docker-single-hadoop.git
$ cd docker-single-hadoop
$ docker build -t leventyildiz/docker-single-hadoop .
```

## Run
Run below command  to run this image as a container

```sh
$ docker run  -it leventyildiz/docker-single-hadoop /bin/sh
```
