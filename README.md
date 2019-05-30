.files
======

[Ansible](https://www.ansible.com/) playbooks to manage various configuration 
files and (optionally) install common applications for my workstation(s).

To install on Fedora (this requires Git and will check the repository out to 
`~/Projects/dotfiles`):
    
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/smsearcy/dotfiles/master/bootstrap.sh)"

To run playbooks from cloned repository:

    cd ~/Projects/dotfiles
    ansible-playbook playbook.yml [--tags TAG,LIST] [--ask-become-pass]

Based on https://github.com/Nurdok/dotfiles


Tags
----

[Ansible tags](http://docs.ansible.com/ansible/latest/playbooks_tags.html) are 
used to control what is installed/configured.

### config

The `config` tag updates configuration files and does not require *sudo* 
permission.

### common

Installs commonly needed applications and respective configurations.  Requires
providing "become" password.

* htop
* tmux
* vim-enhanced

### python

Install Python tools.  Requires `python3` to be available on system.

* pipx
  * cookiecutter
  * pipenv
  * tox

### devtools

Installs other development related tools.  Requires providing "become" password.

* Vagrant (with *libvirt* and *sshfs*)


To Do
-----

* Simplify Vim configuration - single block for (most) managed settings?
* Use Vim 8 packages instead of vim-plug (and `git` task to install)
* Add *Podman* and *Buildah* (replacing *Docker*?)

