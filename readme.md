# Kairos Smart Contract Environment

This environment utilizes the dockerized version of nctl. In order to be able to install the Kairos smart contract and interact with it through the contract-CLI, several steps are necessary:

1. Compile the Casper node and setup and launch an NCTL network

2. Obtain funded keys for the accounts created by NCTL

3. Compile the deposit smart contract and deposit/withdrawal session code and copy-paste them into the `purse-contract-cli` directory (or any other location that can be passed to the CLI as a global path argument)

4. Compile the casper-client from the branch specified in `kairos-nctl-docker/setup.sh` -> The client must support casper node v2.0

5. Deploy the deposit smart contract `deposit-contract-optimized.wasm`

6. Use the contract-CLI to interact with the contract, or deploy session code. Make sure to study the arguments as the *order of supplied arguments matters*!

# Setup script
The `setup.sh` script will automatically fetch all repositories from the correct branch for Kairos contract development. It will clone `purse-contract-1.x`, `purse-contract-cli` and `casper-client-rs`.

# Build script
The `build-nctl.sh` script will build an NCTL environment, create a docker container for it and then extract all funded keys. The funded keys will be located in `./nctl-titano-env/custom/users/`.
