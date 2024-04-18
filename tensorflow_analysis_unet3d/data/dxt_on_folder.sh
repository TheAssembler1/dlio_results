#!/bin/bash

# Store the current directory
current_dir=$(pwd)

# Loop through all .darshan files in the current directory
for darshan_file in *.darshan; do
    # Extract the file name without extension
    folder_name="${darshan_file%.darshan}"

    # Create a folder with the extracted name if it doesn't already exist in the dxt_output directory
    mkdir -p "dxt_output/$folder_name"

    # Copy the .darshan file into the created folder
    cp "$darshan_file" "dxt_output/$folder_name/"

    # Navigate into the created folder
    cd "dxt_output/$folder_name" || exit

    # Run dxt-explorer on the .darshan file
    dxt-explorer "$darshan_file"

    # Move back to the original directory
    cd "$current_dir" || exit

done

