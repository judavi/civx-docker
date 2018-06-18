# Civx-docker-wallet
CivX CentOS Wallet is Docker Image for run the (CivX Wallet)[https://github.com/exofoundation/CivX-Qt]


# First setup

Run the wallet using docker:

```
docker run -it judavi/civix /bin/bash
```

Remember to add a new rpcuser and rpcpassword in ~/.civx/civx.conf, at this moment if you check the file you will see

```
$ cat ~/.civx/civx.conf
```
daemon=1
server=1

Now you can start Civx by typing civxd -daemon from any location in terminal.
When you run civxd for the first time, you will have to set a user and password for rpcuser and rpcpassword which is a protocol used to connect and send commands to Civx. You can do this by typing:

```
echo 'rpcuser=USER\nrpcpassword=PASSWORD' >> ~/.civx/civx.conf
```

**Change USER and PASSWORD to any of your choosing or use a random:

```
echo "rpcuser=$(pwgen 13 1)" >> ~/.civx/civx.conf
echo "rpcpassword=$(pwgen 14 1)" >> ~/.civx/civx.conf
```

Once you've completed the above start CivX:
civxd -daemon
CivX should now start running in the background.


# Use a local wallet

If you want to share the wallet file from your local machine you could expose the file to the container using:

```
docker run -it -v locationOfWalletFileOnYourHostPc.dat:~/.stratis/wallet.dat judavi/civix /bin/bash
```

# Check if the wallet is properly running

Check Wallet is Running and Synced
```
civxd getinfo
```
You're looking for the connections values to verify if is working properly

Another way to confirm the wallet is synced type:

```
civxd getblocktemplate
```


# Disclaimer

I don't have any relation with CivX or any other cryptocurrency, the reason of this image is just for testing porpouse. If you're using a wallet for investing or production  take the necesary precautions to protect your coins/wallet. You understand that you are using any and all information available here AT YOUR OWN RISK.
