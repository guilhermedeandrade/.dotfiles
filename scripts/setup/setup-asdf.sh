#!/bin/bash

echo "Adding the plugins..."
asdf plugin add nodejs
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf plugin add elixir
asdf plugin add ruby
asdf plugin add python

echo "Installing the latest versions of each plugin..."
asdf install
