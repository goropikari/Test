```bash
cp ~/.ssh/id_rsa.pub .devcontainer/server

./devc
```

# Connect
```
./login.sh

ssh -T git@github.com
```

Port Forwarding
```
ssh -t -i ~/.ssh/id_rsa \
    -o NoHostAuthenticationForLocalhost=yes \
    -o UserKnownHostsFile=/dev/null \
    -o GlobalKnownHostsFile=/dev/null \
    -o ForwardAgent=yes \
    -p 2222 \
    -L 8080:localhost:8080 \
    vscode@localhost
```
