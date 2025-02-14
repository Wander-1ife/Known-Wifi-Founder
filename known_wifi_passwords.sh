#!/bin/bash

# List all saved Wi-Fi profiles
profiles=$(netsh wlan show profiles | grep "All User Profile" | awk -F ": " '{print $2}')

echo "Fetching Wi-Fi passwords for all known networks..."

# Loop through each profile line by line
echo "$profiles" | while IFS= read -r profile; do
    echo "Network: $profile"
    
    # Fetch Wi-Fi password for the given profile
    password=$(netsh wlan show profile name="$profile" key=clear | grep "Key Content" | awk -F ": " '{print $2}')
    
    if [ -z "$password" ]; then
        echo "Password: <No password saved or open network>"
    else
        echo "Password: $password"
    fi
    echo "-------------------------"
done

# Wait for user to press Enter before closing
echo "Press Enter to exit..."
read
