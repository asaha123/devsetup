#!/bin/bash
ansible-playbook -i "localhost,"  -c local setup.yml --ask-sudo-pass "$@"
