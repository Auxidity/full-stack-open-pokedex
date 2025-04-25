#!/bin/bash
set -e 

echo "Installing packages"
npm install

echo "Building prod build"
npm run build

echo "Deploying.."
