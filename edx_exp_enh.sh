#!/bin/bash

vagrant ssh -c "echo . /home/vagrant/mitx_all/STARTUP >> .bash_login"
vagrant ssh -c "curl https://raw.github.com/starteam/starteam-linked-samples/master/preview_server.tar.gz | tar xzvpf - ; . ./mitx_all/STARTUP ; cd mitx_all/mitx/ ; ./RESTART-GUNICORN-CMS"
curl https://raw.github.com/starteam/starteam-linked-samples/master/edx_names.sh |bash
vagrant ssh -c "mkdir shared; sudo mount -t vboxsf -o uid=1000 vagrant-root /home/vagrant/shared/"

