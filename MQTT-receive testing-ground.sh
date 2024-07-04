#!/bin/bash

# Set username and password (replace with your actual credentials)
read -p "Username: " username
read -sp "Password: " password
echo

# Set MQTT broker address and topic
broker="localhost"
topic="testing-ground"

# Get the actual port used (defaults to 1883)
port=$(grep -E "^listener\s+([0-9]+)" /etc/mosquitto/mosquitto.conf | awk '{print $2}')
echo "Port used: $port"

# Test connection with authentication
mosquitto_sub -h $broker -t $topic -v -d -u $username -P $password -p $port

if [ $? -eq 0 ]; then
  echo "Login Successful."
else
  echo "ERROR: Login incorrect. Try Again."
fi
