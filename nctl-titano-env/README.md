# nctl-env-custom
my ultimate casper nctl environment 🪛

<img src="https://github.com/jonas089/nctl-titano-env/blob/master/resources/titano.webp" width="500" height="500">

## 1. Default environment (casper-node:latest) 🚪

start:
```
cd default
./start.sh
```

stop:
```
# in default
stop.sh
```

copy assets:
```
# in default
cp-assets.sh
```

## 2. Custom environment (casper-node:custom) 🚀
To change the target repo, edit [casper-nctl.Dockerfile](https://github.com/jonas089/nctl-env-custom/blob/master/custom/casper-nctl-docker/casper-nctl.Dockerfile):

```
...
ARG GITBRANCH=zk
...
RUN git clone -b $GITBRANCH https://github.com/jonas089/casper-node ~/casper-node \
    && source ~/casper-node/utils/nctl/sh/assets/compile.sh
...
```

build the node and nctl 💻:

```
cd custom
./build.sh
```
=> wait for docker image build process to finish

init the container 🏠:

```
# in custom
./init-container.sh
```

source the nctl cli ℹ️:

```
# in custom
source casper-nctl-docker/nctl-activate.sh
```

start the network ✅:

```
nctl-start
```

stop the network 🛑:

```
nctl-stop
```

# Nctl details 📖
see all nctl commander [here](https://github.com/jonas089/nctl-env-custom/blob/master/custom/casper-nctl-docker/nctl-activate.sh)
