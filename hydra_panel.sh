#!/bin/bash

echo -e "Cloning Oversee"
git clone https://github.com/hydren-dev/Oversee.git

echo -e "Going to Oversee directory"
cd Oversee

echo -e "Installing dependencies"
npm install

echo -e "Seeding database"
npm run seed

echo -e "Creating user"
npm run createUser

echo -e "Starting Oversee"
node .

echo -e "Setup complete"
