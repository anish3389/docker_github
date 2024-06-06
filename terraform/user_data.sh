#!/bin/bash

sudo amazon-linux-extras install ansible2 -y
aws s3 cp s3://pipeline-anish-bucket2/files.tar.gz /tmp
mkdir -p /var/s3files
tar -xf /tmp/files.tar.gz -C /var/s3files
cd /var/s3files/ansible
ansible-galaxy collection install -r /var/s3files/ansible/requirements.yml
ansible-playbook /var/s3files/ansible/playbook.yml
