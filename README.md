# civx-docker
CivX CentOS Wallet

# Instructions

Run the wallet using docker:

```
docker run -it judavi/civix
```

Remember to add a new rpcuser and rpcpassword in ~/.civx/civx.conf for example:

$ cat ~/.civx/civx.conf
daemon=1
server=1
rpcuser=maiceic4Zae0a
rpcpassword=shaiSag1uisohd

echo "rpcuser=$user" >> $config
echo "rpcpassword=$password" >> $config
