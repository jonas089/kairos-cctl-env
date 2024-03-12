# Install python dependencies.
python3 -m pip install supervisor toml tomlkit

# Clone repos.
git clone -b kairos-1.5.6-risc0 --single-branch https://github.com/jonas089/casper-node
git clone https://github.com/casper-network/casper-node-launcher.git
git clone -b kairos-1.5.6 --single-branch https://github.com/jonas089/casper-client-rs
git clone https://github.com/casper-network/cctl.git

# Install rust toolchain.
cd ./casper-node
make setup-rs
