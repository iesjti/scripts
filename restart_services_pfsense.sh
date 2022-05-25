#!/bin/bash

# Restart Interface LAN
ifconfig re1 down
ifconfig re1 up

# Restart DHCP
pfSsh.php playback restartdhcpd
pfSsh.php playback restartdhcpd
# Restart DNS
pfSsh.php playback svc restart unbound
pfSsh.php playback svc restart unbound
