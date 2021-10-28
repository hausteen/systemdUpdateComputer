# systemdUpdateComputer
Update computers using systemd with timer and service unit files. 

This will set up a service that will run each morning at 3 AM and update the computer and do a reboot on the machine.
# Dependencies
This will only work for the "apt" package manager.

This will only work for computers using "systemd" as the initialization service.
# How to install
Run the install.sh script as root by typing:
- sudo su
- chmod +x install.sh
- ./install.sh
