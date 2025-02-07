#!/bin/bash

echo -e "Cloning HydraDAEMON"
git clone https://github.com/hydren-dev/HydraDAEMON

echo -e "Going to HydraDAEMON directorym"
cd HydraDAEMON

echo -e "Installing dependencies"
npm install

read -p "Command: " user_command

user_command=$(echo $user_command | sed 's/http:/https:/g')

echo -e "Running cmd: $user_command"
$user_command

echo -e "Enabling HydraDAEMON"
node .

echo -e "Setup complete"
