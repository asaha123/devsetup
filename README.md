# Ansible powered local Development Environment Setup

```
$ ./setup.sh
```



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

## Terraform version

```
$ ./setup.sh --extra-vars "terraform_version=<version string>"
```

## Notes

- Display ansible facts:  ansible all -i "localhost," -c local  -m setup


## Acknowledgements

- https://github.com/jlund/ansible-go
