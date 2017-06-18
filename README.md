# Ansible powered local Development Environment Setup


Install ansible

```
$ sudo pip install ansible
```

Run it:

On Linux

`sudo` is needed for:

- Package management
- Setting up golang

```
$ ansible-playbook -i "localhost,"  -c local setup.yml --ask-sudo-pass
```

On OS X

`sudo` is needed for:

- Setting up golang


```
$ ansible-playbook -i "localhost,"  -c local setup.yml --ask-sudo-pass
```

## Giant Shoulders

- https://github.com/jlund/ansible-go
