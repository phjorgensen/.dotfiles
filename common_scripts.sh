#!/usr/bin/env bash

echo ""
echo "Installing Tinty items..."
tinty install

echo ""
echo "Updating Tinty items..."
tinty update

echo ""
echo "Running stow..."
./run_stow_home.sh

echo ""
echo "Done!"
