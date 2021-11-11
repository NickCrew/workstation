#!/usr/bin/env bash

set -e

sudo dnf install -y \
	GConf2

if [ -z "$1" ]; then
	my_term=gnome-terminal
else
	my_term="$1"
fi
echo "Installing themes for $my_term ..."

mkdir -p "$HOME/src"
cd "$HOME/src"
git clone https://github.com/Mayccoll/Gogh.git gogh
cd gogh/themes

# necessary on ubuntu
export TERMINAL=$my_term

# install themes
./tokyonight.sh
./tokyonight-storm.sh
./gruvbox-dark.sh
./gruvbox.sh
