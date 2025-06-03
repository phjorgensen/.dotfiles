#!/usr/bin/env bash

echo ""
echo "Syncing Tinty items..."
tinty sync

echo ""
echo "Running stow..."
./run_stow_home.sh

echo ""
echo "Done!"
