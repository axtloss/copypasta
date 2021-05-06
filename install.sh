#!/usr/bin/env bash
chmod +x copypasta.sh
cp copypasta.sh $HOME/.local/bin/copypasta
cp copypasta.desktop $HOME/.local/share/applications/

grep -q "Arch" /etc/issue
if [[ "$?" == "0" ]]; then
    sudo pacman -Sy xdotool
fi
echo "Installation done! Go spam your friends with the linux copypasta!"
