#!/bin/bash

network_id="856127940cba92d1"

# Check if already connected to the network
if sudo zerotier-cli listnetworks | grep -q "$network_id"; then
    echo "Already connected to network $network_id"
else
    # Join the ZeroTier network
    echo "Joining ZeroTier network $network_id..."
    join_output=$(sudo zerotier-cli join $network_id)

    if [[ "$join_output" == *"200 join OK"* ]]; then
        echo "Successfully joined network $network_id"
    else
        echo "Failed to join network. Output: $join_output"
    fi
fi

# Get ZeroTier info and list networks
sudo zerotier-cli info
sudo zerotier-cli listnetworks