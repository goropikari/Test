#!/bin/bash

# default command is bash
CMD=${1:-bash}

docker exec -it -u vscode \
		-e SSH_AUTH_SOCK=/home/vscode/.ssh-auth-sock \
		test_devcontainer-app-1 $CMD
