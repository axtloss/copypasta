#!/usr/bin/env bash
chmod +x copypasta.sh
cp copypasta.sh $HOME/.local/bin/copypasta
cp copypasta.desktop $HOME/.local/share/applications/
sudo pacman -Sy xdotool
echo "Installation done! Go spam your friends with the linux copypasta!"
