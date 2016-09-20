FROM ubuntu:16.04
MAINTAINER František Dvořák <valtri@civ.zcu.cz>

RUN apt-get update \
&& apt-get install -y puppet \
&& puppet resource service puppet ensure=stopped enable=false \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
