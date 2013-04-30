#!/bin/bash
#
# Vagrant SSH mappings
# Copyright: Ivica Ceraj 2013
#

set -x

if grep edx-lms /etc/hosts
then
    grep edx-lms /etc/hosts
else
    sudo -s "echo 192.168.42.2 edx-lms >> /etc/hosts"
fi

if grep edx-cms /etc/hosts
then
    grep edx-cms /etc/hosts
else
    sudo -s "echo 192.168.42.3 edx-cms preview.localhost >> /etc/hosts"
fi

set +x
