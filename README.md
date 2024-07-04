# MQTT-BSR
MQTT Protocol Basic Send Receive usage. Based on Terminal.

Install MQTT via the following link:
https://mosquitto.org/download/

Config file is located in:
/etc/mosquitto/mosquitto.conf

Password file is located in:
/etc/mosquitto/passwd

To execute the passwd change run the following:
sudo chmod 644 /etc/mosquitto/passwd

Note: 
- The script doesn't rely on the passwd file. It takes in a password and a username you insert in it.
- However, when you're using MQTTX (a user-friendly MQTT based Application) it will use the password in the passwd file.
- After changing anything in the config of MQTT on Linux, run the following: sudo systemctl restart mosquitto.service
