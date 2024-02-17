# Install python dependencies.
python3 -m pip install supervisor toml tomlkit

# Clone repos.
git clone -b feat-2.0 --single-branch https://github.com/jonas089/casper-node.git && cd casper-node && git checkout 0bcc25f4a203be4e78eed679b54127ab1ed848ab && git pull origin 0bcc25f4a203be4e78eed679b54127ab1ed848ab && cd ../
git clone https://github.com/casper-network/casper-node-launcher.git
git clone -b last-stable-feat-track-node-2.0 https://github.com/jonas089/casper-client-rs.git
git clone https://github.com/casper-network/cctl.git

# Install rust toolchain.
cd ./casper-node
make setup-rs
