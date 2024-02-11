# Kairos Smart Contract Environment

This environment utilizes the dockerized version of nctl. In order to be able to install the Kairos smart contract and interact with it through the contract-CLI, several steps are necessary:

1. Compile the Casper node and setup and launch an NCTL network

2. Obtain funded keys for the accounts created by NCTL

3. Compile the deposit smart contract and deposit/withdrawal session code and copy-paste them into the `purse-contract-cli` directory (or any other location that can be passed to the CLI as a global path argument)

4. Compile the casper-client from the branch specified in `kairos-nctl-docker/setup.sh` -> The client must support casper node v2.0

5. Deploy the deposit smart contract `deposit-contract-optimized.wasm`

6. Use the contract-CLI to interact with the contract, or deploy session code. Make sure to study the arguments as the *order of supplied arguments matters*!

