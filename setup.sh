#!/bin/bash

IMAGENAME=apiconnect
IMAGEVERSION=4.0.16

docker build -t $IMAGENAME:$IMAGEVERSION docker/
