#!/bin/bash
ip=$(curl -s https://ifconfig.me)
if [[ -z "$ip" ]]; then
  echo "Failed to retrieve public IP."
else
  echo "Your public IP is: $ip"
fi