#!/bin/bash
sudo apt update

# install java 17
sudo apt install fontconfig openjdk-17-jre -y

## download and install Jenkins
# first add the repository key to your system

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
##append the Debian package repository address to the server’s sources.list:
sudo sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null'

# update for apt to use the new repository
sudo apt-get update

#Install Jenkins
sudo apt-get install jenkins -y

# Start Jenkins
sudo systemctl start jenkins

# Enable Jenkins to run on Boot
sudo systemctl enable jenkins
