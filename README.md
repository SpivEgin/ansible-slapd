[![Ansible Role](https://img.shields.io/ansible/role/17826.svg)](https://galaxy.ansible.com/Phill93/slapd/) [![Build Status](https://travis-ci.org/Phill93/ansible-slapd.svg?branch=master)](https://travis-ci.org/Phill93/ansible-slapd)

Role Name
=========

This role installs and configurate the openldap.

Role Variables
--------------

see [defaults file](defaults/main.yml)

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

```yaml
- hosts: all
  remote_user: root
  roles:
    - ansible-slapd
```

License
-------

[GPLv3](License.md)
