#!/bin/bash
###############
# Check if the command exists, if not install it
if ! command -v neofetch > /dev/null; then
 echo "Neofetch is not installed" 
 echo 1>&2
  # install neofetch
  sudo apt install neofetch
fi

# Display information about your operating system
neofetch
# Displays current disk space statistics for all mounted devices
echo "Disk Space:"
df -h /
# Checks available and used memory on the system
echo "Memory:"
free -mth
# Check the status of the Apache web server
echo "Apache2 Status:"
/etc/init.d/apache2 status
# Terminate
exit 0