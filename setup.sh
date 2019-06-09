#!/bin/bash

IMAGENAME=apiconnect4
IMAGEVERSION=0.1.1

docker build -t $IMAGENAME:$IMAGEVERSION docker/
