```bash
cp ~/.ssh/id_rsa.pub .devcontainer/server

./devc
```

# Connect
```bash
./login.sh

ssh -T git@github.com
```

Port Forwarding
```bash
ssh -t -i ~/.ssh/id_rsa \
    -o NoHostAuthenticationForLocalhost=yes \
    -o UserKnownHostsFile=/dev/null \
    -o GlobalKnownHostsFile=/dev/null \
    -o ForwardAgent=yes \
    -p 2222 \
    -L 8080:localhost:8080 \
    vscode@localhost
```

```bash
alias dc=docker
dc stop $(dc ps -q)
dc system prune -f
./devc
./login.sh
```
