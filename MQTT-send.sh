#!/bin/bash

# Username and password 
read -p "Username: " username
read -sp "Password: " password
echo

# MQTT broker address and topic
broker="localhost"
topic="testing-ground"

# Infinite Loop unless...
while true; do
  # Read message from user
  read -p "Enter message (or 'quit' to exit): " message

  # Check for quit command
  if [[ "$message" == "quit" ]]; then
    echo "Exiting..."
    break
  fi

  # Publish message with authentication
  mosquitto_pub -h "$broker" -t "$topic" -m "$message" -u "$username" -P "$password"

  # Check for successful publication of msg
  if [ $? -eq 0 ]; then
    echo "Message published successfully"
  else
    echo "Error publishing message"
  fi
done
