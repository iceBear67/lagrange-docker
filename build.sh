#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

docker build --tag icebear67/lagrange-onebot --file ./Dockerfile .

