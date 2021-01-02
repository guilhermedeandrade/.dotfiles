# load aliases
. $HOME/.config/fish/aliases.fish

# load starship
starship init fish | source

# load asdf
source ~/.asdf/asdf.fish

# add $HOME/.local/bin to PATH
set PATH $HOME/.local/bin $PATH

# add python scripts location to PATH
set PATH $HOME/Library/Python/2.7/bin $PATH

# add yarn global packages to PATH
set PATH (yarn global bin) $PATH

# set empty greeting
set fish_greeting

# set default key bindings
fish_vi_key_bindings

# set FZF_DEFAULT_COMMAND 
set -gx FZF_DEFAULT_COMMAND  'rg --files --follow --hidden'
