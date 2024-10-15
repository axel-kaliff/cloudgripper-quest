# Dockerfile
FROM ubuntu:24.04

COPY requirements.txt .

# ===== Install ROS =====
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install locales
RUN locale-gen en_US en_US.UTF-8
RUN update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
RUN export LANG=en_US.UTF-8

RUN apt install curl\
                  python3-pip \ 
                  software-properties-common -y
RUN add-apt-repository universe -y


# ROS 1
# RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
# RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -

# RUN apt update
# # RUN apt install ros-noetic-desktop-full
# #RUN apt install ros-noetic-desktop
# RUN apt install ros-noetic-ros-base -y

# EXPOSE 80


# === ROS2 ====
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null
RUN apt update
RUN apt install ros-dev-tools -y
RUN apt update

# TODO replace with ros-jazzy-ros-base
RUN apt install ros-jazzy-desktop -y 

# RUN source /opt/ros/jazzy/setup.bash

# TODO temp manually install pip reqs
# RUN python3 -m pip install --no-cache-dir -r requirements.txt --break-system-packages




# install node for testing signaling-serverR
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
RUN nvm install 20