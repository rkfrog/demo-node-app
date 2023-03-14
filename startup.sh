#!/bin/bash

echo "Installing packages..."
npm install
npm install -g express-generator

echo ""
echo "Node version: " $(node -v)
echo "NPM version: " $(npm -v)
echo "Express version: " $(express --version)

echo ""
echo "Starting up the app on port 3000..."
DEBUG=demo-node-app:* npm start