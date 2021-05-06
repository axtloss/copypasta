#!/usr/bin/env bash
chmod +x copypasta.sh
cp copypasta.sh $HOME/.local/bin/copypasta
cp copypasta.desktop $HOME/.local/share/applications/

if command -v sudo &> /dev/null
then
    rootCommand="sudo"
elif command -v doas &> /dev/null
then
    rootCommand="doas"
fi

grep -q "Arch" /etc/issue
if [[ "$?" == "0" ]]; then
    $rootCommand pacman -Sy xdotool
elif [[ $(uname) == "FreeBSD" ]]
then
    $rootCommand pkg install xdotool
fi
echo "Installation done! Go spam your friends with the linux copypasta!"
