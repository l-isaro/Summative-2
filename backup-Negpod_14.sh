#!/bin/bash

# Define variables for remote server details
host="2f05c1f8800b.3be8ebfc.alu-cod.online"
username="2f05c1f8800b"
password="d4a1d225d0abda9549d8"
remote_dir="/summative/0923-2023S"

# Define variable for local directory to back up
local_dir="negpod_14-q1"

# Use scp to copy the local directory to the remote server
scp -r "$local_dir" "$username@$host:$remote_dir"

echo "Backup of $local_dir completed successfully!"
