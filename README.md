# Ansible powered local Development Environment Setup


Install ansible

```
$ sudo pip install ansible
```

Run it:

```
$ ansible-playbook -i "localhost,"  -c local setup.yml --ask-sudo-pass
```

