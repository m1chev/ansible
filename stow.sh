#!/bin/bash

cd ~/.dotfiles &&\
  stow --adopt -vt ~ \
    nvim\
    bash\
    tmux\
    zsh\
    nvim
