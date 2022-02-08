#!/bin/bash
sudo apt update && sudo apt install ansible unzip git -y
git clone https://github.com/CallyCa/terraform_ansible.git
ansible-playbook terraform_ansible/playbooks/ubuntu-aws/ec2-configure.yaml --ask-become-pass
ansible-playbook terraform_ansible/playbooks/ubuntu-aws/jenkins-configure.yaml --ask-become-pass
ansible-playbook terraform_ansible/playbooks/ubuntu-aws/k8s-configure.yaml --ask-become-pass
