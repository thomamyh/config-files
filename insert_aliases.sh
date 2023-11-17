#!/bin/bash

bash=".bashrc"
zsh=".zshrc"

if [ -f ~/$bash ]; then
cat <<EOT >> /home/$USER/$bash
# Source aliases from a separate file
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
EOT
else
    echo "/home/$USER/$bash does not exist"
fi

# Check if ZSH is installed
if [ -f ~/$zsh ]; then
cat <<EOT >> /home/$USER/$zsh
# Source aliases from a separate file
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
EOT
else
    echo "/home/$USER/$zsh does not exist"
fi
