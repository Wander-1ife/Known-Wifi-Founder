# Wi-Fi Password Retriever (Windows)

## Overview
This Bash script retrieves and displays the saved Wi-Fi passwords for all known networks on a Windows system. It utilizes the `netsh` command to list all Wi-Fi profiles and extracts the stored passwords for each network.

## Features
- Lists all saved Wi-Fi profiles.
- Retrieves and displays passwords for each profile.
- Handles open networks and networks without saved passwords.

## Requirements
- Windows operating system.
- Bash shell (e.g., Git Bash, WSL, or Cygwin).
- Administrator privileges to execute `netsh` commands.

## Usage
1. Open a Bash shell with administrator privileges.
2. Run the script:
   ```bash
   ./wifi_passwords.sh
   ```
3. The script will display the saved Wi-Fi networks and their passwords.
4. Press `Enter` to exit the script.

## Example Output
```
Fetching Wi-Fi passwords for all known networks...
Network: MyHomeWiFi
Password: mysecurepassword123
-------------------------
Network: OfficeNetwork
Password: <No password saved or open network>
-------------------------
Press Enter to exit...
```

## Notes
- If a network does not have a saved password, it may be an open network or use an authentication method that does not store the password in plaintext.
- Running the script in a non-administrator shell may result in permission errors.

## Disclaimer
This script is intended for educational and personal use only. Retrieving stored passwords without permission is illegal and unethical.

