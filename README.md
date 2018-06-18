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

So please remember to add this values, this could be done using when you're running the container:

```
echo "rpcuser=$(pwgen 13 1)" >> ~/.civx/civx.conf
echo "rpcpassword=$(pwgen 14 1)" >> ~/.civx/civx.conf
```

# Use a local wallet

If you want to share the wallet file from your local machine you could expose the file to the container using:

```
docker run -it -v locationOfWalletFileOnYourHostPc.dat:~/.stratis/wallet.dat judavi/civix /bin/bash
```

# Disclaimer

I don't have any relation with CivX or any other cryptocurrency, the reason of this image is just for testing porpouse. If you're using a wallet for investing or production  take the necesary precautions to protect your coins/wallet. You understand that you are using any and all information available here AT YOUR OWN RISK.
