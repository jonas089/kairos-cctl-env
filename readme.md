# Kairos (Deposit) Smart Contract Environment

## Clone and compile binaries (cctl)
```bash
./setup-cctl.sh
source ./cctl/activate
cctl-infra-bin-compile
```

## Setup cctl assets
```bash
cctl-infra-net-setup
```

## Start cctl network
```bash
cctl-infra-net-start
```

## Stop cctl network
```bash
cctl-infra-net-stop
```

## Purge cctl network
```bash
cctl-infra-net-stop
./purge-cctl.sh
```

## Clone kairos deposit contract and contract cli
```bash
./setup.sh
```

## Compile kairos deposit contract
```bash
cd kairos-deposit-contract
```

### Compile on Ubuntu
```bash
./build-ubuntu-feat-2.0.sh
```
=> deposit-contract-optimized.wasm

### Compile on Macos (Darwin, ...)
```bash
./build-macos-darwin-feat-2.0.sh
```

## Deploy deposit contract to cctl
```bash

```
