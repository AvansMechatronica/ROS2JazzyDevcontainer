rem docker build --build-arg BASE_IMAGE=osrf/ros:$dist -f Dockerfile -t my-ros-devcontainer-vscode:$dist .

docker build -f Dockerfile -t my-ros-devcontainer-vscode:humble-desktop .

pause
