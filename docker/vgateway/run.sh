#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
sudo docker stop $1
sudo docker rm $1
sudo docker run -ti -p "$2:8829" -p "$3:8080" --name $1 -v $DIR/conf.properties:/vgateway/conf.d/99.host.properties interiot/vgateway:latest