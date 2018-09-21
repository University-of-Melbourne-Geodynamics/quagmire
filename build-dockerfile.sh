#!/bin/sh

# Don't forget to increment the version number if you want to keep the old stuff

FROM_IMG="lmoresi/uom-py-lavavu-notebook-bundle:1.0.7"
IMAGENAME=lmoresi/quagmire:0.3
PROJ_NAME=quagmire
NB_PORT=8888
NB_PASSWD=""
NB_DIR=Notebooks
START_NB="0-StartHere.ipynb"

docker build -t $IMAGENAME \
             -f Docker/Dockerfile \
             --build-arg IMAGENAME_ARG=$IMAGENAME \
             --build-arg PROJ_NAME_ARG=$PROJ_NAME \
             --build-arg NB_PORT_ARG=$NB_PORT \
             --build-arg NB_PASSWD_ARG=$NB_PASSWD \
             --build-arg NB_DIR_ARG=$NB_DIR \
             --build-arg START_NB_ARG=$START_NB \
             --build-arg FROMIMG_ARG=$FROM_IMG \
             $PWD
