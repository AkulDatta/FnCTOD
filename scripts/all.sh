#!/bin/bash

# Find all processing scripts and extract their identifiers
for processing_script in processing-*.sh; do
    # Extract the identifier (the * part)
    identifier=${processing_script#processing-}  # Remove 'processing-' prefix
    identifier=${identifier%.sh}                # Remove '.sh' suffix
    
    # Check if corresponding prompting script exists
    prompting_script="prompting-${identifier}.sh"
    if [ -f "$prompting_script" ]; then
        echo "Found matching pair for identifier: $identifier"
        echo "Executing $processing_script..."
        bash "$processing_script"
        
        echo "Executing $prompting_script..."
        bash "$prompting_script"
        
        echo "Completed pair: $identifier"
        echo "-------------------"
    fi
done