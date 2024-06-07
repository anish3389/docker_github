#!/bin/bash


# Referenced from https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update

apt-get install docker-ce docker-compose-plugin


# apt install docker
# sudo amazon-linux-extras install ansible2 -y
# aws s3 cp s3://pipeline-anish-bucket2/files.tar.gz /tmp
# mkdir -p /var/s3files
# tar -xf /tmp/files.tar.gz -C /var/s3files
# cd /var/s3files/ansible
# ansible-galaxy collection install -r /var/s3files/ansible/requirements.yml
# ansible-playbook /var/s3files/ansible/playbook.yml
