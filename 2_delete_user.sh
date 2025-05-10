#!/bin/bash


playbook="$HOME/ansible/2_delete_user.yml"
inventory="$HOME/ansible/inventory.txt"
private_key="$HOME/.ssh/ansible"
os_user="test3"
os_user_pwd="test3"
os_user_uid="1013"
log="$HOME/ansible_logs/${os_user}_$(date +%Y%m%d)_2_delete_user.log"

#ansible-playbook -i ${inventory} --key-file ${private_key} -e "username=${os_user} password=${os_user_pwd}" --become ${playbook} | tee ${log}
ansible-playbook -i ${inventory} --key-file ${private_key} -e "username=${os_user} password=${os_user_pwd}" --become --ask-become-pass ${playbook} | tee ${log}