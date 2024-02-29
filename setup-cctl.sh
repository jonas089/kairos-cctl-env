# Install python dependencies.
python3 -m pip install supervisor toml tomlkit

# Clone repos.
git clone -b kairos-feat-2.0 --single-branch https://github.com/cspr-rad/casper-node
git clone https://github.com/casper-network/casper-node-launcher.git
git clone -b kairos-feat-track-2.0 --single-branch https://github.com/cspr-rad/casper-client-rs
git clone https://github.com/casper-network/cctl.git

# Install rust toolchain.
cd ./casper-node
make setup-rs