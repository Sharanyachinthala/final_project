#!/bin/bash

# Function to clean a SPAdes folder
clean_folder () {
    echo "Cleaning $1 ..."
    cd $1 || exit

    # Move important files out
    mv contigs.fasta spades.log ../

    # Confirm moved
    echo "Files moved to parent:"
    ls ../contigs.fasta ../spades.log

    # Confirm current directory
    echo "Now in: $(pwd)"

    # Delete everything else
    rm -r *

    # Move files back
    mv ../contigs.fasta ../spades.log ./

    # Confirm cleanup
    echo "Remaining files in $1:"
    ls

    # Go back to starting directory
    cd ..
}

# Run cleanup for each SPAdes directory
clean_folder spades_03_S58
clean_folder spades_04_S62
