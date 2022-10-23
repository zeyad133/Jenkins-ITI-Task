#! /bin/bash

cd ~/Documents/VSCODE/ITI_Projects/CICD_Flask_WebApp/Slave_AWS_EC2/Ansible

echo $1 > inventory

sleep 20

ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i inventory --private-key ~/Downloads/ansible-key.pem slave.yml
