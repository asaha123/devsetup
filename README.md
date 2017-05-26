# Ansible powered local Development Environment Setup


Install ansible

```
$ sudo pip install ansible
```

Run it:

On Linux

```
$ ansible-playbook -i "localhost,"  -c local setup.yml --ask-sudo-pass
```

On OS X

```
$ ansible-playbook -i "localhost,"  -c local setup.yml
```


