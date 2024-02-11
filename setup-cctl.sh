# Install python dependencies.
python3 -m pip install supervisor toml tomlkit

# Clone repos.
git clone -b feat-2.0 --single-branch https://github.com/jonas089/casper-node.git
git clone https://github.com/casper-network/casper-node-launcher.git
git clone https://github.com/casper-ecosystem/casper-client-rs.git
git clone https://github.com/casper-network/cctl.git

# Install rust toolchain.
cd ./casper-node
make setup-rs
