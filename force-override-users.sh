# Remove the directory
docker exec casper-nctl-container /bin/bash -c 'sudo rm -rf /home/casper/casper-node/utils/nctl/assets/net-1/users' && \
# Create the directory again (no need for `docker mkdir`, just use `mkdir` in a bash command)
docker exec casper-nctl-container /bin/bash -c 'mkdir -p /home/casper/casper-node/utils/nctl/assets/net-1/users' && \
# Copy the 'users' directory to the created directory in the container
docker cp ./users casper-nctl-container:/home/casper/casper-node/utils/nctl/assets/net-1/
