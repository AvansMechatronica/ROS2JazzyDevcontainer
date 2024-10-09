#!/bin/sh

dist=humble-desktop-full

docker build --build-arg BASE_IMAGE=$dist -f Dockerfile -t my-ros-devcontainer-vscode:$dist .

#for dist in melodic
#do
#    docker pull devrt/ros-devcontainer-vscode:$dist-desktop
#    docker build --build-arg BASE_IMAGE=devrt/ros-devcontainer-vscode:$dist-desktop -f Dockerfile -t my-ros-devcontainer-vscode:$dist-desktop .
#done
