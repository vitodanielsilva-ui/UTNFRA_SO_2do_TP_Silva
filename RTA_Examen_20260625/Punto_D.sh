#!/bin/bash
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i inventory playbook.yml --ask-become-pass
