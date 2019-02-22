#!/bin/bash

IMAGENAME=apiconnect
IMAGEVERSION=0.1.3

docker build -t $IMAGENAME:$IMAGEVERSION docker/
