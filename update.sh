#!/bin/bash
echo "Running apt update"
apt update
echo "Running apt upgrade -y"
apt upgrade -y
echo "Running apt autoremove -y"
apt autoremove -y
echo "Running apt update"
apt update
echo "reboot"
reboot
