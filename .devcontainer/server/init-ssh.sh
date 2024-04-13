#!/bin/bash

# Copy generated keys
mkdir -p $HOME/.ssh
cat /server/id_rsa.pub > $HOME/.ssh/authorized_keys
chmod 644 $HOME/.ssh/authorized_keys
chmod 700 $HOME/.ssh
