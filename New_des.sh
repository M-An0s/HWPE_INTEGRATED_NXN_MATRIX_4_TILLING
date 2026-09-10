#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: No directory specified."
    echo "Usage: source run_hls.sh <directory_name>"
    return 1
fi

# 1. Export the project directory so Vitis HLS can read it
export PROJ_DIR="$1"

# 2. Safely navigate to the target directory
if ! cd "$PROJ_DIR"; then
    echo "Error: Directory '$PROJ_DIR' not found!"
    return 1
fi

# 3. Clean up previous solution
rm -rf solution1

# 4. Go back and run Vitis HLS with our exported environment variable
cd ..
vitis_hls -f script.ctl
rm -f file_list.txt

# 5. Navigate to the newly generated Verilog directory
if ! cd "$PROJ_DIR/solution1/syn/verilog"; then
    echo "Error: Failed to navigate to verilog directory!"
    # Clean up the exported variable before returning
    unset PROJ_DIR
    return 1
fi

# 6. Output the list of files
mkdir -p ~/HLS_corrected
ls > ~/HLS_corrected/file_list.txt

# 7. Return to where you started and clean up the env variable
cd ../../../..
unset PROJ_DIR