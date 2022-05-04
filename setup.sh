#!/bin/bash

# Creating the needed directories
mkdir -p ~/.config/nvim/config.d
mkdir -p ~/.config/nvim/templates

# NVIM configuration
ln -sf $(pwd)/init.vim ~/.config/nvim/init.vim
ln -sf $(pwd)/config.d/10.init.vim ~/.config/nvim/config.d/10.init.vim
ln -sf $(pwd)/config.d/20.plugins.vim ~/.config/nvim/config.d/20.plugins.vim
ln -sf $(pwd)/config.d/30.completion.vim ~/.config/nvim/config.d/30.completion.vim
ln -sf $(pwd)/config.d/40.settings.vim ~/.config/nvim/config.d/40.settings.vim
ln -sf $(pwd)/config.d/50.mappings.vim ~/.config/nvim/config.d/50.mappings.vim
# NVIM plugins update
ln -sf $(pwd)/update.vim ~/.config/nvim/update.vim
# COC settings
ln -sf $(pwd)/coc-settings.json ~/.config/nvim/coc-settings.json

# Templates
ln -sf $(pwd)/templates/header.c.cpp ~/.config/nvim/templates/header.c.cpp
ln -sf $(pwd)/templates/source.c.cpp ~/.config/nvim/templates/source.c.cpp
ln -sf $(pwd)/templates/source.py ~/.config/nvim/templates/header.py

env SETUP_420=1 nvim
