#!/bin/bash

echo "Adding the plugins..."
asdf plugin add nodejs
asdf plugin add elixir
asdf plugin add ruby

echo "Installing the latest versions of each plugin..."
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs latest
asdf install elixir latest
asdf install ruby latest
