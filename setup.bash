#!/bin/bash

echo "Downloading latest pylintrc..."

wget -q -O pylintrc https://gist.githubusercontent.com/NicholasSynovic/6f0cc09cbf4c0c1439ce119eb1c419bd/raw/dd435c8711cb6ed9140e5bf7801de2e2988162a0/pylintrc

echo "Installing poetry dependencies..."
poetry install
