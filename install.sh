#!/bin/bash
echo "Changing ownership of the files"
chown root:root update.sh
chown root:root update.service
chown root:root update.timer
echo "Setting permissions on the files"
chmod 600 update.sh
chmod 600 update.service
chmod 600 update.timer
echo "Moving files to correct folder locations"
mv update.sh /root/
mv update.service /etc/systemd/system/
mv update.timer /etc/systemd/system/
echo "Enabling the update.timer unit file on startup"
systemctl enable update.timer
echo "Reloading the systemctl daemon"
systemctl daemon-reload
echo "Starting the update.timer unit file"
systemctl start update.timer
echo "Install Complete"
